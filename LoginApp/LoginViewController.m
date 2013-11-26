//
//  LoginViewController.m
//  LoginApp
//
//  Created by Siddhant Dange on 11/25/13.
//  Copyright (c) 2013 Siddhant Dange. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"
#import "AccountManager.h"

@interface LoginViewController ()
@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UISwitch *rememberSwitch;

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)loginAction:(id)sender {
    NSString *username = self.usernameTextField.text;
    NSString *password = self.passwordTextField.text;
    
    AccountManager *acManager = ((AppDelegate*)[UIApplication sharedApplication].delegate).accountManager;
    [acManager loginWithUsername:username andPassword:password completion:^(NSDictionary *accountInfo) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
