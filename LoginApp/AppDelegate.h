//
//  AppDelegate.h
//  LoginApp
//
//  Created by Siddhant Dange on 11/25/13.
//  Copyright (c) 2013 Siddhant Dange. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AccountManager;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) AccountManager *accountManager;

@end
