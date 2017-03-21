//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "HaikuCategories.h"
#import <UIKit/UIKit.h>



// *** BEST PRACTICE ***
// You should almost never expose a setter in a UIView subclass that gets passed through
// to a child view.  Instead expose the child view directly.
// *** END ***

@interface TIESummaryView : UIView

// *** BEST PRACTICE ***
// All exposed subview properties should have the attribute readonly.  Instead of taking a view
// as a parameter, you should expose a containing view that the controller can add to.
// For example, we expose the contentView and headerView as containers and our owner
// can place any view inside those and fill them with constraints.
// *** END ***

#warning Example code - Read only subview properties
@property (nonatomic, readonly) UIView *headerView;
@property (nonatomic, readonly) UIView *contentView;
@property (nonatomic, readonly) UILabel *footerLabel;

@end
