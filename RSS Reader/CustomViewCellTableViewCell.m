//
//  CustomViewCellTableViewCell.m
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 06/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import "CustomViewCellTableViewCell.h"

@implementation CustomViewCellTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
