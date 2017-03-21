//
//
//  Created by Lucas Stomberg on 2/10/17.
//  Copyright © 2017 typeiron. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___TableView+ModelManagement.h"


@implementation ___VARIABLE_prefix______VARIABLE_productName___TableViewModel (ModelManagement)

#warning Example code - perform your own conversion in your own convenience initializer
-(instancetype)initWithFavorites:(NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel *> *)favorites
						  recent:(NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel *> *)recent
						   other:(NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel *> *)other {
	self = [self init];
	if(self) {
        NSMutableArray<___VARIABLE_prefix______VARIABLE_productName___TableSectionModel*> *sections = [NSMutableArray new];
		
		___VARIABLE_prefix______VARIABLE_productName___TableSectionModel *favoritesSection = [___VARIABLE_prefix______VARIABLE_productName___TableSectionModel new];
		favoritesSection.headerTitle = @"Favorites";
		favoritesSection.footerTitle = @"End Favorites";
		favoritesSection.cellModels = favorites;
		
		___VARIABLE_prefix______VARIABLE_productName___TableSectionModel *recentSection = [___VARIABLE_prefix______VARIABLE_productName___TableSectionModel new];
		recentSection.headerTitle = @"Recent";
		recentSection.footerTitle = @"End Recent";
		recentSection.cellModels = recent;
		
		___VARIABLE_prefix______VARIABLE_productName___TableSectionModel *otherSection = [___VARIABLE_prefix______VARIABLE_productName___TableSectionModel new];
		otherSection.headerTitle = @"Other";
		otherSection.footerTitle = @"End Other";
		otherSection.cellModels = other;
		
		self.sectionModels = @[favoritesSection, recentSection, otherSection];
    }
    return self;
}

@end




@implementation ___VARIABLE_prefix______VARIABLE_productName___TableViewCell (ModelManagement)

-(void)setRepresentedObject:(___VARIABLE_prefix______VARIABLE_productName___TableCellModel *)data {
	
    //set view properties here for data
    self.titleLabel.text = data.title;
}

@end
