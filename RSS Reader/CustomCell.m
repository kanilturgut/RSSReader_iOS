//
//  CustomCell.m
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 06/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell {
    UILabel *_titleValue;
    UILabel *_descriptionValue;
    UILabel *_linkValue;
    UIImage *_imageValue;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        CGRect titleLabelRectangle = CGRectMake(0, 5, 70, 15);
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:titleLabelRectangle];
        titleLabel.textAlignment = NSTextAlignmentRight;
        titleLabel.text = @"Title:";
        titleLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:titleLabel];
        
        CGRect linkLabelRectangle = CGRectMake(0, 25, 70, 15);
        UILabel *linkLabel = [[UILabel alloc] initWithFrame:linkLabelRectangle];
        linkLabel.textAlignment = NSTextAlignmentRight;
        linkLabel.text = @"Name:";
        linkLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:linkLabel];
        
        CGRect descriptionLabelRectangle = CGRectMake(0, 45, 70, 15);
        UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:descriptionLabelRectangle];
        descriptionLabel.textAlignment = NSTextAlignmentRight;
        descriptionLabel.text = @"Description:";
        descriptionLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:descriptionLabel];
        
        
        CGRect titleValueRectangle = CGRectMake(80, 5, 200, 15);
        _titleValue = [[UILabel alloc] initWithFrame:titleValueRectangle];
        [self.contentView addSubview:_titleValue];
        
        CGRect nameValueRectangle = CGRectMake(80, 5, 200, 15);
        _linkValue = [[UILabel alloc] initWithFrame:nameValueRectangle];
        [self.contentView addSubview:_linkValue];
        
        CGRect descriptionValueRectangle = CGRectMake(80, 45, 200, 15);
        _descriptionValue = [[UILabel alloc] initWithFrame:descriptionValueRectangle];
        [self.contentView addSubview:_descriptionValue];
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

- (void) setTitle:(NSString *)title {
    if (![title isEqualToString: _title]) {
        _title = [title copy];
        _titleValue.text = _title;
    }
}

- (void) setLink:(NSString *)link {
    if (![link isEqualToString: _link]) {
        _link = [link copy];
        _linkValue.text = _link;
    }
}

- (void) setDescription:(NSString *)description {
    if (![description isEqualToString:_description]) {
        _description = [description copy];
        _descriptionValue.text = _description;
    }
}

@end
