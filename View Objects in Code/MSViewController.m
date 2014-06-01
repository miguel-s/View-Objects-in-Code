//
//  MSViewController.m
//  View Objects in Code
//
//  Created by Miguel Serrano on 01/06/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import "MSViewController.h"

@interface MSViewController ()

@property UILabel *codeLabel;
@property UITextField *codeTextField;
@property UIButton *codeButton;

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect labelFrame = CGRectMake(20, 60, 280, 22);
    CGRect textFieldFrame = CGRectMake(20, 110, 280, 30);
    CGRect buttonFrame = CGRectMake(20, 160, 280, 30);
    
    self.codeLabel = [[UILabel alloc] initWithFrame:labelFrame];
    self.codeLabel.text = @"Label Code";
    self.codeLabel.backgroundColor = [UIColor redColor];
    
    self.codeTextField = [[UITextField alloc] initWithFrame:textFieldFrame];
    self.codeTextField.placeholder = @"Tesxtfield Code";
    self.codeTextField.backgroundColor = [UIColor blueColor];
    
    self.codeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.codeButton.frame = buttonFrame;
    [self.codeButton setTitle:@"Press me!" forState:UIControlStateNormal];
    [self.codeButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.codeLabel];
    [self.view addSubview:self.codeTextField];
    [self.view addSubview:self.codeButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didPressButton:(UIButton *)button {
    self.codeLabel.text = self.codeTextField.text;
}

@end
