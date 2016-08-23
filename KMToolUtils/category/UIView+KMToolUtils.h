//
//  UIView+KMToolUtils.h
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/20.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (KMToolUtils)
/*
 * layer function
 */
-(UIView*)makeRadius:(CGFloat)fRadius;

-(UIView*)borderWidth:(CGFloat)borderWidth color:(UIColor*)color;


/*
 * Gesture function
 */
-(void)addTapDismissEdit;
@end
