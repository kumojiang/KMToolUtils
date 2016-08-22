//
//  UIImage+KMToolUtils.m
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import "UIImage+KMToolUtils.h"

@implementation UIImage (KMToolUtils)
+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    
    CGContextFillRect(context, rect);
    
    
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return theImage;
}


- (UIImage *)adapterSize:(CGSize)rectSize {
    UIGraphicsBeginImageContext(CGSizeMake(rectSize.width, rectSize.height));
    [self drawInRect:CGRectMake(0, 0, rectSize.width, rectSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetShouldAntialias(context, NO);
    UIGraphicsEndImageContext();
    
    return reSizeImage;
}
@end
