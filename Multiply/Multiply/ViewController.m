//
//  ViewController.m
//  Multiply
//
//  Created by John Blanchard on 7/21/14.
//  Copyright (c) 2014 John Blanchard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;
@property (weak, nonatomic) IBOutlet UILabel *myEqual;
@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)changeNumber:(id)sender {
    int slideNumber = (int)self.mySlider.value;
    self.myNumber.text = [NSString stringWithFormat:@"%d",slideNumber];

    int multInt = [self.myMultiplier.text intValue];
    int result = slideNumber*multInt;
    if(result == 0) {
        result = 1;
    }
    self.myMultiplier.text = [NSString stringWithFormat:@"%d",result];
}


- (IBAction)onCalculateButtonPressed:(id)sender {
    int someInt = [self.myNumber.text intValue];
    int multInt = [self.myMultiplier.text intValue];
    int result = someInt*multInt;
    self.myAnswer.text = [NSString stringWithFormat:@"%d",result];
    if(result > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else if (result < 20) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    if(result % 3 == 0) {
        self.myAnswer.text = @"fizz";
    }
    if(result % 5 == 0) {
        self.myAnswer.text = @"buzz";
    }
    if(result % 3 == 0 && result % 5 == 0) {
        self.myAnswer.text = @"fizzbuzz";
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
