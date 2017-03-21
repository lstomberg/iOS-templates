//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TIESummaryServerInteractor.h"
#import "TIESummaryViewController.h"
#import "HaikuCategories.h"

@class TIESummaryControllerModel;


#warning Example code - server response model
@interface TIESummaryServerInteractorLoadModelResponse : NSObject <ECFObject>

@property (nonatomic) NSArray<TIESummaryTableCellModel*> *objects;

//support loading more
@property (nonatomic) NSString *loadMoreToken;

@end






//convenience method to convert from server model to client model
//they may be the exact same thing but we maintain differences here in the event
//things change with future server versions
@interface TIESummaryServerInteractorLoadModelResponse (ViewControllerModel)

-(TIESummaryControllerModel*)viewModel;

@end
