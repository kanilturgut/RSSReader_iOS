//
//  LoginService.m
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 03/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import "LoginService.h"
#import "BaseService.h"
#import "User.h"
#include "UserService.h"

@implementation LoginService

- (void) login:(NSDictionary *) dict completijon:(void(^) (BOOL)) completionBlock {
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:nil];
    
    [[BaseService instance] sendAsyncRequestToURL:USER_LOGIN method:@"POST" data:jsonData completion:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
        int code = [httpResponse statusCode];
        
        NSDictionary *data2 = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        
        if (completionBlock) {
            if (code == 200) {
                
                User *user = [[User alloc] init];
                NSString *str = [data2 objectForKey:@"name"];
                NSString *str2 = [data2 objectForKey:@"surname"];
                
                user.name = str;
                user.surname = str2;
                
                NSLog(@"name : %@", str);
                NSLog(@"surname : %@", str2);
                completionBlock(YES);
            } else {
                completionBlock(NO);
            }
        }
    }];
}

@end
