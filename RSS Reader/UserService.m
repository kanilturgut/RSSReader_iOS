//
//  UserService.m
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 03/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import "UserService.h"
#import "LoginService.h"
#import "BaseService.h"
#import "User.h"

@implementation UserService

#pragma mark - Initializer Methods

- (id) init {
    self = [super init];
    
    if (self) {
        
    }
    
    return self;
}

+ (UserService *) instance {
    
    static UserService *instace = nil;
    
    @synchronized(self) {
        if (instace == nil) {
            instace = [[UserService alloc] init];
        }
    }
    
    return instace;
}

- (void) loginBackgroundWithCompletion:(void (^)(bool))completion {
    
    User *user = [[User alloc] init];
    
    NSMutableDictionary *loginDict = [NSMutableDictionary new];
    [loginDict setObject:user.user_id forKey:@"_id"];
    [loginDict setObject:user.password forKey:@"password"];
    [loginDict setObject:user.email forKey:@"email"];
    [loginDict setObject:user.surname forKey:@"surname"];
    [loginDict setObject:user.name forKey:@"name"];
    
    [[LoginService new] login:loginDict completion:^(BOOL isSuccess) {
        if (isSuccess) {
            NSLog(@"Background Login Success");
            completion(isSuccess);
        } else {
            completion(isSuccess);
        }
    }];
    
}

@end
