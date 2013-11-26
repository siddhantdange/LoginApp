//
//  FileManager.h
//  BackToTheFarmRestaurant
//
//  Created by Siddhant Dange on 11/25/13.
//  Copyright (c) 2013 Siddhant Dange. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileManager : NSObject

-(void)saveAccountToDatabaseWithUsername:(NSString*)username andPassword:(NSString*)password completion:(void(^)(BOOL))completion;

-(void)loadAccountFromDatabaseWithUsername:(NSString*)username andPassword:(NSString*)password completion:(void(^)(NSDictionary*))completion;

-(void)loadAccountFromCacheWithCompletion:(void(^)(NSDictionary*))completion;

-(void)cacheAccount:(NSString*)username andPassword:(NSString*)password completion:(void(^)(BOOL))completion;

@end
