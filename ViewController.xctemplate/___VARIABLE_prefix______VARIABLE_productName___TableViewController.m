//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___TableViewController.h"
#import "___VARIABLE_prefix______VARIABLE_productName___TableViewCell.h"
#import "___VARIABLE_prefix______VARIABLE_productName___TableView+ModelManagement.h"


static NSString *kCellIdentifier = @"CellIdentifier";

@implementation ___VARIABLE_prefix______VARIABLE_productName___TableViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[___VARIABLE_prefix______VARIABLE_productName___TableViewCell class] forCellReuseIdentifier:kCellIdentifier];
	
	//setting tableFooterView removes the table lines seen when only a few cells are displayed
    self.tableView.tableFooterView = [UIView new];
    
    
    self.refreshControl = [UIRefreshControl new];
#warning Example code - provide your own string
    self.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:_STR(@"Refreshing Data",@"some contextual string")];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _representedObject.sectionModels.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _representedObject.sectionModels[section].cellModels.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return _representedObject.sectionModels[section].headerTitle;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return _representedObject.sectionModels[section].footerTitle;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ___VARIABLE_prefix______VARIABLE_productName___TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier
                                                                 forIndexPath:indexPath];
    ___VARIABLE_prefix______VARIABLE_productName___TableCellModel *model = _representedObject.sectionModels[indexPath.section].cellModels[indexPath.row];
    [cell setRepresentedObject:model];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //do something here.  If you dont own the action, call a delegate method.
	
#warning Example code - missing functionality
	
}

@end





@implementation ___VARIABLE_prefix______VARIABLE_productName___TableCellModel
@end
@implementation ___VARIABLE_prefix______VARIABLE_productName___TableSectionModel
@end
@implementation ___VARIABLE_prefix______VARIABLE_productName___TableViewModel
@end
