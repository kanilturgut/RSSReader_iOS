//
//  RSSListContollerViewController.m
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 04/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import "RSSListContollerViewController.h"
#import "Feed.h"
#import "FeedService.h"
#import "FeedTableCell.h"
#import "FeedDetailsController.h"

@interface RSSListContollerViewController ()

@end

@implementation RSSListContollerViewController

NSMutableArray *feeds;
NSIndexPath *feedForIndexPath;

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
    // Do any additional setup after loading the view.
    
    UINib *cellNib = [UINib nibWithNibName:@"FeedTableCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:@"FeedTableCell"];
    
    feeds = [NSMutableArray new];
    
    [[FeedService new] getFeedListWithCompletion:^(NSArray *feedList) {
        
        feeds = [feedList mutableCopy];
        [self.tableView reloadData];
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return feeds.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *feed = [feeds objectAtIndex:indexPath.row];
    
    NSString *title = [feed objectForKey:@"title"];
    NSString *link = [feed objectForKey:@"link"];
    NSString *description = [feed objectForKey:@"description"];
    NSString *image = [feed objectForKey:@"image"];
    
    FeedTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FeedTableCell"];
    cell.titleLabel.text = title;
    cell.descriptionLabel.text = description;
    
    
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *feed = [feeds objectAtIndex:indexPath.row];
    
//    NSString *title = [feed objectForKey:@"title"];
//    NSString *link = [feed objectForKey:@"link"];
    NSString *description = [feed objectForKey:@"description"];
    
    UITextView *gettingSizeTextView = [UITextView new];
    gettingSizeTextView.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:12];
    
    NSString *text = [NSString stringWithFormat:@"%@", description];
    
    gettingSizeTextView.text = text;
    gettingSizeTextView.scrollEnabled = NO;
    
    CGSize maximumLabelSize = CGSizeMake(241, 9999);
    
//    CGSize expectSize = [gettingSizeTextView sizeThatFits:maximumLabelSize];
    
//    if (text == nil || text.length == 0) {
//        return 100;
//    } else
//        return expectSize.height;
    
    return 100;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *feed = [feeds objectAtIndex:indexPath.row];
    NSString *title = [feed objectForKey:@"title"];
    
    [self performSegueWithIdentifier:@"OpenInUIWebViewSegue" sender:self];
}



- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"OpenInUIWebViewSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        FeedDetailsController *destViewController = segue.destinationViewController;
        
        NSDictionary *tmp = [feeds objectAtIndex:indexPath.row];
        NSString *link = [tmp objectForKey:@"link"];
        
        destViewController.linkOfFeed = link;
    }
}

@end
