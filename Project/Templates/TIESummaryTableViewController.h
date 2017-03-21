//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TIESummaryTableSectionModel, TIESummaryTableCellModel, TIESummaryTableViewModel;


@interface TIESummaryTableViewController : UITableViewController

// *** BEST PRACTICE ***
// Any properties that are required for your class to function should be exposed
// through the representedObject property.  These are not customization values
// but data that truely is needed to function.  Never mutate this externally as
// the class will not know about changes.  Always call -setRepresentedObject: to make
// changes from this class update.
// *** END ***

@property (nonatomic) TIESummaryTableViewModel *representedObject;

@end




//this isn't just the view model, but also any model needed to handle tapping on the cell or any
//internal view controller model saved for this cell

@interface TIESummaryTableCellModel : NSObject
@property (nonatomic) NSString *identifier;
@property (nonatomic) NSString *title;
@end

@interface TIESummaryTableSectionModel : NSObject
@property (nonatomic, copy) NSArray<TIESummaryTableCellModel*> *cellModels;
@property (nonatomic) NSString *headerTitle;
@property (nonatomic) NSString *footerTitle;
@end


//Model for the TableViewController
//this child view controller doesn't have a loader, so this will need to
//be fully provided by the parent view controller
//implement a method in +ModelManagement to make the conversion easier

@interface TIESummaryTableViewModel : NSObject
@property (nonatomic, copy) NSArray<TIESummaryTableSectionModel*> *sectionModels;
@end
