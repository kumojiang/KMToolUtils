//
//  UILabel+KMToolUtils.m
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import "UILabel+KMToolUtils.h"

@implementation UILabel (KMToolUtils)
+(UILabel*)labelWithText:(NSString*)strText color:(UIColor*)color font:(UIFont*)font {
    UILabel* labelRet = [UILabel new];
    labelRet.text = strText;
    labelRet.textColor = color;
    labelRet.font = font;
    
    return labelRet;
}
@end
