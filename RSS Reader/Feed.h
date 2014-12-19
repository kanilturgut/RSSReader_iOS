//
//  Feed.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 04/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Feed : NSObject

@property (nonatomic, retain) NSString *feed_id;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *link;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *image;

@end
