//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "___VARIABLE_prefix______VARIABLE_productName___TableViewController.h"
@class ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorInput;

@interface ___VARIABLE_prefix______VARIABLE_productName___ViewController : UIViewController

@property (nonatomic, readonly) ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorInput *input;

@end




//model objects the view controller needs to function typically loaded from
//the serverInteractor but may be directly provided if necessary if that makes
//sense for your use case.  Expose a setter in the view controller


@interface ___VARIABLE_prefix______VARIABLE_productName___ControllerModel : NSObject

#warning Example code - data view controller needs
@property (nonatomic) NSString *labelString;

// *** BEST PRACTICE ***
// When your controller requires data for a child controller to function
// you can directly reference that child controllers model items to reduce
// the number of classes and class transforms necessary
// *** END ***

@property (nonatomic) NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel*> *favoriteItems;
@property (nonatomic) NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel*> *recentItems;
@property (nonatomic) NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel*> *otherItems;

@end
