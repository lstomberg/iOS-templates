//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ___VARIABLE_prefix______VARIABLE_productName___TableViewCell : UITableViewCell

// *** BEST PRACTICE ***
// All exposed subview properties should have the attribute readonly.  Instead of taking a view
// as a parameter, you should expose a containing view that the controller can add to.
// For example, we expose the titleLabel and allow our controller to customize as needed.
// *** END ***

#warning Example code - dont remake properties from base class, only here for example
@property (nonatomic, readonly) UILabel *titleLabel;

@end
