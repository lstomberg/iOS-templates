//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "TIESummaryCommandObjects.h"



@implementation TIESummaryServerInteractorLoadModelResponse

+(void)initializeClassDefinition:(ECFClassDefinition *)def {
#warning Example code - class ECF name
    def.name = @"Epic.Mobile.TIE.LoadSummary.Response";
}

@end






@implementation TIESummaryServerInteractorLoadModelResponse (ViewControllerModel)

//conversion from server response to the client model
-(TIESummaryControllerModel *)viewModel {
    TIESummaryControllerModel *viewModel = [TIESummaryControllerModel new];
	
#warning Example code - add your own conversion code here.  Below doesn't make sense.
	viewModel.favoriteItems = self.objects;
	viewModel.recentItems = self.objects;
	viewModel.otherItems = self.objects;
	
	
    return viewModel;
}

@end
