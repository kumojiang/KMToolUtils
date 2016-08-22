//
//  UIButton+KMToolUtils.m
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import "UIButton+KMToolUtils.h"

@implementation UIButton (KMToolUtils)

+(UIButton*)buttonWithType:(UIButtonType)buttonType
                     title:(NSString*)strTitle
                titleColor:(UIColor*)color
                      font:(UIFont*)font
                background:(id)background
                     state:(UIControlState)controlState {
    UIButton* buttonRet = [UIButton buttonWithType:buttonType];
    [buttonRet setTitle:strTitle forState:controlState];
    [buttonRet setTitleColor:color forState:controlState];
    buttonRet.titleLabel.font = font;
    
    
    if (background == nil) {
        
    } else if ([background isKindOfClass:[UIImage class]]) {
        [buttonRet setBackgroundImage:background forState:controlState];
    } else if ([background isKindOfClass:[UIColor class]]) {
        [buttonRet setBackgroundColor:background];
    } else {
        
    }
    
    
    return buttonRet;
}

@end
