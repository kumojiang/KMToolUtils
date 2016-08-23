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

-(void)addTapDismissEdit {
    // 添加结束edit的部分
    UITapGestureRecognizer* singleTapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAnywhereToDismissKeyboard:)];
    UISwipeGestureRecognizer* swipGR = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipAnyWhereToDismissKeyboard:)];
    //    swipGR.delegate = self;
    [swipGR setDirection:UISwipeGestureRecognizerDirectionDown];
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillShowNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        [self addGestureRecognizer:singleTapGR];
        [self addGestureRecognizer:swipGR];
    }];
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillHideNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        [self removeGestureRecognizer:singleTapGR];
        [self removeGestureRecognizer:swipGR];
    }];
}

-(void)tapAnywhereToDismissKeyboard:(UIGestureRecognizer*)gestureRecognizer {
    [self endEditing:YES];
}


-(void)swipAnyWhereToDismissKeyboard:(UISwipeGestureRecognizer*)swipRecognizer {
    if (swipRecognizer.direction == UISwipeGestureRecognizerDirectionDown) {
        [self endEditing:YES];
    }
}

@end
