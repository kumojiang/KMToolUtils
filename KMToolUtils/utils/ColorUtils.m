//
//  ColorUtils.m
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/20.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import "ColorUtils.h"

UIColor *RGBHexColor(int32_t rgbValue) {
    return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0f];
}


UIColor *RGBColor(int32_t r, int32_t g, int32_t b) {
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0f];
}
