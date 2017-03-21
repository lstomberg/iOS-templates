//
//  Created by Lucas Stomberg on 2/10/17.
//  Copyright © 2017 typeiron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TIESummaryTableViewController.h"
#import "TIESummaryTableViewCell.h"



@interface TIESummaryTableViewModel (ModelManagement)

#warning Example code - convenience initializer
-(instancetype)initWithFavorites:(NSArray<TIESummaryTableCellModel*>*)favorites
						  recent:(NSArray<TIESummaryTableCellModel*>*)recent
						   other:(NSArray<TIESummaryTableCellModel*>*)other;

@end



@interface TIESummaryTableViewCell (ModelManagement)

//The view should NOT know about the model, but we dont want to fill controller
//put the view-model data population in a category on the cell
-(void)setRepresentedObject:(TIESummaryTableCellModel*)data;

@end
