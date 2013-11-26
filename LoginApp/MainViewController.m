//
//  ViewController.m
//  LoginApp
//
//  Created by Siddhant Dange on 11/25/13.
//  Copyright (c) 2013 Siddhant Dange. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"
#import "AccountManager.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //check login
    AccountManager *acManager = ((AppDelegate*)[UIApplication sharedApplication].delegate).accountManager;
    [acManager loginWithCompletion:^(BOOL success) {
        if(!success){
            [self performSegueWithIdentifier:@"loginSegue" sender:self];
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
