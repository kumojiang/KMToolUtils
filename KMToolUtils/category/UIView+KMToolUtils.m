//
//  UIView+KMToolUtils.m
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/20.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import "UIView+KMToolUtils.h"

@implementation UIView (KMToolUtils)

-(UIView*)makeRadius:(CGFloat)fRadius {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = fRadius;
    
    return self;
}

-(UIView*)borderWidth:(CGFloat)borderWidth color:(UIColor*)color {
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = color.CGColor;
    
    return self;
}

@end
