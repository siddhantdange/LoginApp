//
//  AccountManager.m
//  BackToTheFarmRestaurant
//
//  Created by Siddhant Dange on 11/25/13.
//  Copyright (c) 2013 Siddhant Dange. All rights reserved.
//

#import "AccountManager.h"
#import "AccountVerificationManager.h"
#import "FileManager.h"

@interface AccountManager ()

@property (nonatomic, strong) FileManager *fileManager;

@end

@implementation AccountManager

-(id)init{
    self = [super init];
    
    //init other vars
    self.fileManager = [[FileManager alloc] init];
    
    return self;
}

-(void)loginWithCompletion:(void(^)(BOOL))completion{
    [self.fileManager loadAccountFromCacheWithCompletion:^(NSDictionary *accountInfo) {
        
        //if account info exists save to memory
        if(accountInfo){
            self.accountInfo = accountInfo.copy;
        }
        
        completion(accountInfo != nil);
    }];
}

-(void)loginWithUsername:(NSString*)username andPassword:(NSString*)password completion:(void(^)(NSDictionary*))completion{
    
    //verify
    BOOL success = YES;//[AccountVerificationManager verifyAccountUsername:username andPassword:password];
    if(success){
        [self.fileManager loadAccountFromDatabaseWithUsername:username andPassword:password completion:^(NSDictionary *accountInfo) {
            
            //if account info exists then save to memory
            if(accountInfo){
                self.accountInfo = accountInfo.copy;
            }
            
            completion(accountInfo);
        }];
    } else{
        completion(nil);
    }
    
}

@end
