//
//  FeedTableCell.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 06/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncImageView.h"

@interface FeedTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end
