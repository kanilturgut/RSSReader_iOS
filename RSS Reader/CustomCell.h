//
//  CustomCell.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 06/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (nonatomic, retain) NSString *feed_id;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *link;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *image;

@end
