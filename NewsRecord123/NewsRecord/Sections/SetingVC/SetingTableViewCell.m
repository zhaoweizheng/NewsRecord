//
//  SetingTableViewCell.m
//  NewsRecord
//
//  Created by lanouhn on 15/4/23.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "SetingTableViewCell.h"

@implementation SetingTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_pictureView release];
    [_titleLabel release];
    [super dealloc];
}
@end
