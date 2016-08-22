//
//  UIImage+KMToolUtils.h
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIImage (KMToolUtils)
+ (UIImage *)imageWithColor:(UIColor *)color;
- (UIImage *)adapterSize:(CGSize)rectSize;
@end
