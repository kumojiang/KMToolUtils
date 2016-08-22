//
//  KMCommonTableViewCell.h
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KMCommonTableViewCell : UITableViewCell

+(CGFloat)heightWithItem:(id)item;
+(NSString*)strIdentifier;
-(void)configWithItem:(id)item;

@end
