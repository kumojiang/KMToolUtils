//
//  KMTableViewAdapter.h
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef NSString*(^KMCommonViewCellClassNameBlock)(id item, NSIndexPath* indexPath);
typedef void(^KMCommonViewCellClickBlock)(UITableView* tableView, NSIndexPath* indexPath);

@interface KMTableViewAdapter : NSObject<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSDictionary* dictDataSource;

+(KMTableViewAdapter*)tableViewAdapterWithCellBlock:(KMCommonViewCellClassNameBlock)cellBlock
                                     cellClickBlock:(KMCommonViewCellClickBlock)clickBlock;
@end
