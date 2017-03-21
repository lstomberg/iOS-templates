//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___CommandObjects.h"



@implementation ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorLoadModelResponse

+(void)initializeClassDefinition:(ECFClassDefinition *)def {
#warning Example code - class ECF name
    def.name = @"Epic.Mobile.TIE.LoadSummary.Response";
}

@end






@implementation ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorLoadModelResponse (ViewControllerModel)

//conversion from server response to the client model
-(___VARIABLE_prefix______VARIABLE_productName___ControllerModel *)viewModel {
    ___VARIABLE_prefix______VARIABLE_productName___ControllerModel *viewModel = [___VARIABLE_prefix______VARIABLE_productName___ControllerModel new];
	
#warning Example code - add your own conversion code here.  Below doesn't make sense.
	viewModel.favoriteItems = self.objects;
	viewModel.recentItems = self.objects;
	viewModel.otherItems = self.objects;
	
	
    return viewModel;
}

@end
