//
//  ViewController.m
//  IWannaBeBlue
//
//  Created by John Blanchard on 7/21/14.
//  Copyright (c) 2014 John Blanchard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.colorLabel.text = @"I soooo wanna be blue!";
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onChangeColorButtonPressed:(id)sender {
    self.colorLabel.backgroundColor = [UIColor blueColor];
    self.colorLabel.text = @"yah Im blue";
    self.colorLabel.textColor = [UIColor whiteColor];
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
