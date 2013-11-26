//
//  AccountManager.h
//  BackToTheFarmRestaurant
//
//  Created by Siddhant Dange on 11/25/13.
//  Copyright (c) 2013 Siddhant Dange. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountManager : NSObject

@property (nonatomic, strong) NSDictionary *accountInfo;

-(void)loginWithCompletion:(void(^)(BOOL))completion;
-(void)loginWithUsername:(NSString*)username andPassword:(NSString*)password completion:(void(^)(NSDictionary*))completion;


@end
