//
//  User.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 03/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, retain) NSString *user_id;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *surname;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *password;

@end
