//
//  AccountVerificationManager.h
//  Revyt
//
//  Created by Siddhant Dange on 11/16/13.
//  Copyright (c) 2013 Siddhant Dange. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountVerificationManager : NSObject

+(BOOL)verifyAccountUsername:(NSString*)username andPassword:(NSString*)password;

@end
