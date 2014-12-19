//
//  FeedService.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 04/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseService.h"
#import "Feed.h"

@interface FeedService : NSObject

@property (nonatomic, strong) NSMutableArray *feedList;

+ (FeedService *) instance;
- (void) getFeedListWithCompletion:(void (^) (NSArray *)) completionBlock;

@end
