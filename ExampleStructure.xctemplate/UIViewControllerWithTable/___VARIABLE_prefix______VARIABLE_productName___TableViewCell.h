//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ___VARIABLE_prefix______VARIABLE_productName___TableViewCellModel;

@interface ___VARIABLE_prefix______VARIABLE_productName___TableViewCell : UITableViewCell

@end


//data binding in category to keep out of cell and view controller
//DO NOT MODIFY INTERNAL STATE OF CELL IN CATEGORY
@interface ___VARIABLE_prefix______VARIABLE_productName___TableViewCell (SetData)

-(void)setData:(___VARIABLE_prefix______VARIABLE_productName___TableViewCellModel*)data;

@end
