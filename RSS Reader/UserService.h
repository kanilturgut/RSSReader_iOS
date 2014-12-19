//
//  UserService.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 03/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface UserService : NSObject

@property(nonatomic, strong) User *currentUser;

+ (UserService *) instance;
- (void) loginBackgroundWithCompletion:(void (^) (bool success)) completion;

@end
