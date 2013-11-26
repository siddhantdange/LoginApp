//
//  AccountVerificationManager.m
//  Revyt
//
//  Created by Siddhant Dange on 11/16/13.
//  Copyright (c) 2013 Siddhant Dange. All rights reserved.
//

#import "AccountVerificationManager.h"

@implementation AccountVerificationManager

+(BOOL)verifyAccountUsername:(NSString*)username andPassword:(NSString*)password{
    return username.length > 0 && [AccountVerificationManager verifyUsername:username] && password.length > 0;
}

+(BOOL)verifyUsername:(NSString*)username{
    BOOL stricterFilter = YES;
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:username];
}

@end
