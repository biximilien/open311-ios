//
//  HomeCell.m
//  GeoReporter
//
//  Created by Marius Constantinescu on 9/7/13.
//  Copyright (c) 2013 City of Bloomington. All rights reserved.
//

#import "HomeCell.h"

@implementation HomeCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setFrame:(CGRect)frame {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        // The device is an iPad running iOS 3.2 or later.
        frame.origin.x += HOME_CELL_IPAD_OFFSET;
        frame.size.width -= 2 * HOME_CELL_IPAD_OFFSET;
    }
    else {
        // The device is an iPhone or iPod touch. We use the default frame of the superclass (TableViewCell)
    }
    [super setFrame:frame];
}

@end
