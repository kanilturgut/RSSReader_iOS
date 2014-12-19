//
//  LoginService.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 03/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginService : NSObject

- (void) login:(NSDictionary *) dict completion:(void(^) (BOOL)) completionBlock;

@end
