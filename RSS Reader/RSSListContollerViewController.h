//
//  RSSListContollerViewController.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 04/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSSListContollerViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
    

@end
