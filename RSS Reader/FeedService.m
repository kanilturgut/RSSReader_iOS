//
//  FeedService.m
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 04/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import "FeedService.h"
#import "BaseService.h"
#import "Feed.h"

@implementation FeedService

#pragma mark - Initializer Methods

- (id) init {
    self = [super init];
    
    if (self) {
        
    }
    
    return self;
}

+ (FeedService *) instance {
    
    static FeedService *instance = nil;
    
    @synchronized(self) {
        if (instance == nil) {
            instance = [[FeedService alloc] init];
        }
    }
    
    return instance;
}

- (void) getFeedListWithCompletion:(void (^) (NSArray *)) completionBlock {
    
    [[BaseService instance] sendAsyncRequestToURL:GET_FEEDS
                                           method:@"GET"
                                             data:nil
                                       completion:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
        int code = [httpResponse statusCode];
        

        
        if (completionBlock) {
            if (code == 200) {
                
                NSArray *feedArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
                
                completionBlock(feedArray);
                NSLog(@"Feed List Fetch Success");
            } else {
                NSLog(@"Feed List Fetch Failed");
            }
        }
    }];
}

    

@end
