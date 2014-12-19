//
//  FeedDetailsController.m
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 08/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import "FeedDetailsController.h"
#import "Feed.h"

@interface FeedDetailsController ()

@end

@implementation FeedDetailsController

@synthesize webView;
@synthesize linkOfFeed;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *fullURL = linkOfFeed;
    NSURL *url = [NSURL URLWithString:fullURL];
    
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [webView loadRequest:req];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
