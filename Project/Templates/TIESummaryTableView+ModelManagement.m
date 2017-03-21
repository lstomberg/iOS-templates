//
//
//  Created by Lucas Stomberg on 2/10/17.
//  Copyright © 2017 typeiron. All rights reserved.
//

#import "TIESummaryTableView+ModelManagement.h"


@implementation TIESummaryTableViewModel (ModelManagement)

#warning Example code - perform your own conversion in your own convenience initializer
-(instancetype)initWithFavorites:(NSArray<TIESummaryTableCellModel *> *)favorites
						  recent:(NSArray<TIESummaryTableCellModel *> *)recent
						   other:(NSArray<TIESummaryTableCellModel *> *)other {
	self = [self init];
	if(self) {
        NSMutableArray<TIESummaryTableSectionModel*> *sections = [NSMutableArray new];
		
		TIESummaryTableSectionModel *favoritesSection = [TIESummaryTableSectionModel new];
		favoritesSection.headerTitle = @"Favorites";
		favoritesSection.footerTitle = @"End Favorites";
		favoritesSection.cellModels = favorites;
		
		TIESummaryTableSectionModel *recentSection = [TIESummaryTableSectionModel new];
		recentSection.headerTitle = @"Recent";
		recentSection.footerTitle = @"End Recent";
		recentSection.cellModels = recent;
		
		TIESummaryTableSectionModel *otherSection = [TIESummaryTableSectionModel new];
		otherSection.headerTitle = @"Other";
		otherSection.footerTitle = @"End Other";
		otherSection.cellModels = other;
		
		self.sectionModels = @[favoritesSection, recentSection, otherSection];
    }
    return self;
}

@end




@implementation TIESummaryTableViewCell (ModelManagement)

-(void)setRepresentedObject:(TIESummaryTableCellModel *)data {
	
    //set view properties here for data
    self.titleLabel.text = data.title;
}

@end
