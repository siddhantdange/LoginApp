//
//  FileManager.m
//  BackToTheFarmRestaurant
//
//  Created by Siddhant Dange on 11/25/13.
//  Copyright (c) 2013 Siddhant Dange. All rights reserved.
//

#import "FileManager.h"

@implementation FileManager

#pragma -mark Database Interaction

-(void)saveAccountToDatabaseWithUsername:(NSString*)username andPassword:(NSString*)password completion:(void(^)(BOOL))completion{
    //save account to parse
    
    //completion
    BOOL success = YES;
    completion(success);
}

-(void)loadAccountFromDatabaseWithUsername:(NSString*)username andPassword:(NSString*)password completion:(void(^)(NSDictionary*))completion{
    //load parse account
    
    //completion
    completion(@{});
}


#pragma -mark Local Storage Interaction

-(BOOL)isAccountCached{
    return NO;
}

-(void)loadAccountFromCacheWithCompletion:(void(^)(NSDictionary*))completion{
    NSDictionary *accountInfo = nil;
    
    //if account is cached, load from there
    if([self isAccountCached]){
        
    }
    
    completion(accountInfo);
}


-(void)cacheAccount:(NSString*)username andPassword:(NSString*)password completion:(void(^)(BOOL))completion{
    
    //cache account
    
    //completion
    BOOL success = YES;
    completion(success);
}
@end
