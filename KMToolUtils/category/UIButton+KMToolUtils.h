//
//  UIButton+KMToolUtils.h
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIButton (KMToolUtils)

+(UIButton*)buttonWithType:(UIButtonType)buttonType
                     title:(NSString*)strTitle
                titleColor:(UIColor*)color
                      font:(UIFont*)font
                background:(id)imageOrColorBg
                     state:(UIControlState)controlState;




@end
