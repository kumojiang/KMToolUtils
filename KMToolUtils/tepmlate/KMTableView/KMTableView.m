//
//  KMTableView.m
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import "KMTableView.h"

@interface KMTableView()
@property (nonatomic, strong) KMTableViewAdapter* _adapter;

@end

@implementation KMTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+(KMTableView*)tableViewWithCellNameBlock:(KMCommonViewCellClassNameBlock)classNameBlock
                           clickCellBlock:(KMCommonViewCellClickBlock)clickBlock {
    KMTableViewAdapter* adapter = [KMTableViewAdapter tableViewAdapterWithCellBlock:classNameBlock cellClickBlock:clickBlock];
    
    return [self tableViewWithAdapter:adapter];
}

+(KMTableView*)tableViewWithAdapter:(KMTableViewAdapter *)adapter {
    
    KMTableView* tableView = [[KMTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [tableView configAdapter:adapter];
    
    return tableView;
}


-(void)configAdapter:(KMTableViewAdapter*)adapter {
    self._adapter = adapter;
    self.dataSource = self._adapter;
    self.delegate = self._adapter;
}

-(void)setShowDataSource:(NSDictionary *)showDataSourceSet {
    _showDataSource = showDataSourceSet;
    
    self._adapter.dictDataSource = _showDataSource;
    
    [self reloadData];
}

@end
