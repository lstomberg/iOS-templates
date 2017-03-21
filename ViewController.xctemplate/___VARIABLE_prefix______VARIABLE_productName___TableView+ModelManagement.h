//
//  Created by Lucas Stomberg on 2/10/17.
//  Copyright © 2017 typeiron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "___VARIABLE_prefix______VARIABLE_productName___TableViewController.h"
#import "___VARIABLE_prefix______VARIABLE_productName___TableViewCell.h"



@interface ___VARIABLE_prefix______VARIABLE_productName___TableViewModel (ModelManagement)

#warning Example code - convenience initializer
-(instancetype)initWithFavorites:(NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel*>*)favorites
						  recent:(NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel*>*)recent
						   other:(NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel*>*)other;

@end



@interface ___VARIABLE_prefix______VARIABLE_productName___TableViewCell (ModelManagement)

//The view should NOT know about the model, but we dont want to fill controller
//put the view-model data population in a category on the cell
-(void)setRepresentedObject:(___VARIABLE_prefix______VARIABLE_productName___TableCellModel*)data;

@end
