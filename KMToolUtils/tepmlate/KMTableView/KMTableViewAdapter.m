//
//  KMTableViewAdapter.m
//  KMToolUtilsDemo
//
//  Created by kumojiang on 16/8/22.
//  Copyright © 2016年 kumo. All rights reserved.
//

#import "KMTableViewAdapter.h"
#import "KMCommonTableViewCell.h"

@interface KMTableViewAdapter()
@property (nonatomic, strong) KMCommonViewCellClassNameBlock cellBlock;
@property (nonatomic, strong) KMCommonViewCellClickBlock clickBlock;
@end

@implementation KMTableViewAdapter

+(KMTableViewAdapter*)tableViewAdapterWithCellBlock:(KMCommonViewCellClassNameBlock)cellBlock
                                     cellClickBlock:(KMCommonViewCellClickBlock)clickBlock {
    KMTableViewAdapter* adapter = [[KMTableViewAdapter alloc] init];
    
    adapter.cellBlock = cellBlock;
    adapter.clickBlock = clickBlock;
    
    return adapter;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dictDataSource.allKeys.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.dictDataSource objectForKey:@(section)] count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = [[self.dictDataSource objectForKey:@(indexPath.section)] objectAtIndex:indexPath.row];
    
    NSString* strCellClassName = self.cellBlock(item, indexPath);
    
    Class classCell = NSClassFromString(strCellClassName);
    
    KMCommonTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:[classCell strIdentifier]];
    
    if (cell == nil) {
        cell = [[classCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[classCell strIdentifier]];
    }
    
    [cell configWithItem:item];
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = [[self.dictDataSource objectForKey:@(indexPath.section)] objectAtIndex:indexPath.row];
    
    NSString* strCellClassName = self.cellBlock(item, indexPath);
    
    Class classCell = NSClassFromString(strCellClassName);
    
    return [classCell heightWithItem:item];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.clickBlock(tableView, indexPath);
}


@end
