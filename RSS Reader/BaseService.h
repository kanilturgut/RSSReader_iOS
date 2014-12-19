//
//  BaseService.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 03/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <Foundation/Foundation.h>

#define BASE_DOMAIN         @"http://146.185.187.200:8080"
#define USER_LIST           @"/api/users/list"
#define USER_REGISTER       @"/api/users/create"
#define USER_LOGIN          @"/api/users/login"
#define DELETE_USERS        @"/api/users/deleteAll"
#define UPDATE_USER         @"/api/users/update"

#define SYNC_FEED           @"/api/feed/sync"
#define GET_FEEDS           @"/api/feed/list"

@interface BaseService : NSObject


+(BaseService *) instance;

-(void) sendAsyncRequestToURL:(NSString *) urlString
                       method:(NSString *) httpMethod
                         data:(NSData *) data
                   completion:(void (^) (NSURLResponse *, NSData *, NSError *)) completionBlock;

-(void) sendSynchRequestToURL:(NSString *)urlString
                       method:(NSString *)httpMethod
                         data:(NSData *)data
                   completion:(void (^)(NSURLResponse *, NSData *, NSError *)) completionBlock;


@end