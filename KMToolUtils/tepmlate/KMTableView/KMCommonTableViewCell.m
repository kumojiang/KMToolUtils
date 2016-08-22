//
//  KMCommonTableViewCell.m
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import "KMCommonTableViewCell.h"

@implementation KMCommonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


+(CGFloat)heightWithItem:(id)item {
    return 44.0f;
}


+(NSString*)strIdentifier {
    return NSStringFromClass(self);
}


-(void)configWithItem:(id)item {
    //TODO: please interface this method
}

@end
