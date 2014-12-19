//
//  FeedDetailsController.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 08/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Feed.h"

@interface FeedDetailsController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) NSString *linkOfFeed;

@end
