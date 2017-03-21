//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___TableViewController.h"
#import "___VARIABLE_prefix______VARIABLE_productName___TableViewModel.h"
#import "___VARIABLE_prefix______VARIABLE_productName___TableViewCell.h"

static NSString *kCellIdentifier = @"CellIdentifier";

@implementation ___VARIABLE_prefix______VARIABLE_productName___TableViewController {
    ___VARIABLE_prefix______VARIABLE_productName___TableViewModel *_tableViewData;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[___VARIABLE_prefix______VARIABLE_productName___TableViewCell class] forCellReuseIdentifier:kCellIdentifier];
    self.tableView.tableFooterView = [UIView new];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _tableViewData.numberOfSections;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_tableViewData numberOfRowsInSection:section];
}

//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return [_tableViewData titleForHeaderInSection:section];
//}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ___VARIABLE_prefix______VARIABLE_productName___TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier
                                                                 forIndexPath:indexPath];
    ___VARIABLE_prefix______VARIABLE_productName___TableViewCellModel *data = [_tableViewData cellModelForRowAtIndexPath:indexPath];
    [cell setData:data];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //do something here.  If you dont own the action, call a delegate method.
    
}

@end
