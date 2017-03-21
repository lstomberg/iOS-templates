//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "TIESummaryTableViewController.h"
#import "TIESummaryTableViewCell.h"
#import "TIESummaryTableView+ModelManagement.h"
#import "HaikuCategories.h"

static NSString *kCellIdentifier = @"CellIdentifier";

@implementation TIESummaryTableViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[TIESummaryTableViewCell class] forCellReuseIdentifier:kCellIdentifier];
	
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
    TIESummaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier
                                                                 forIndexPath:indexPath];
    TIESummaryTableCellModel *model = _representedObject.sectionModels[indexPath.section].cellModels[indexPath.row];
    [cell setRepresentedObject:model];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //do something here.  If you dont own the action, call a delegate method.
	
#warning Example code - missing functionality
	
}

@end





@implementation TIESummaryTableCellModel
@end
@implementation TIESummaryTableSectionModel
@end
@implementation TIESummaryTableViewModel
@end
