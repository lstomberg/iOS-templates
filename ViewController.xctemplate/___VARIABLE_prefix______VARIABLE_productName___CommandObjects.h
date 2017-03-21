//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "___VARIABLE_prefix______VARIABLE_productName___ServerInteractor.h"
#import "___VARIABLE_prefix______VARIABLE_productName___ViewController.h"


@class ___VARIABLE_prefix______VARIABLE_productName___ControllerModel;


#warning Example code - server response model
@interface ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorLoadModelResponse : NSObject <ECFObject>

@property (nonatomic) NSArray<___VARIABLE_prefix______VARIABLE_productName___TableCellModel*> *objects;

//support loading more
@property (nonatomic) NSString *loadMoreToken;

@end






//convenience method to convert from server model to client model
//they may be the exact same thing but we maintain differences here in the event
//things change with future server versions
@interface ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorLoadModelResponse (ViewControllerModel)

-(___VARIABLE_prefix______VARIABLE_productName___ControllerModel*)viewModel;

@end
