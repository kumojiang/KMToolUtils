//
//  KMTableView.h
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KMTableViewAdapter.h"

@interface KMTableView : UITableView
/*
 * DataSource use description：
 * key is section index
 * value is array for show in index
 */
@property (nonatomic, strong) NSDictionary* showDataSource;

+(KMTableView*)tableViewWithCellNameBlock:(KMCommonViewCellClassNameBlock)classNameBlock
                           clickCellBlock:(KMCommonViewCellClickBlock)clickBlock;

+(KMTableView*)tableViewWithAdapter:(KMTableViewAdapter*)adapter;
@end
