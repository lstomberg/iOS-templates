//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "TIESummaryServerInteractor.h"
#import "TIESummaryServerInteractor_internal.h"
#import "TIESummaryCommandObjects.h"



// Add conformation to ECFObject and an internal property
@interface TIESummaryServerInteractorInput () <ECFObject>

#warning Example code - internal token for loading more
@property (nonatomic) NSString *loadMoreToken;

@end






@implementation TIESummaryServerInteractor {
    TIESummaryServerInteractorInput *_input;
    TIESummaryControllerModel *_loadedControllerModel;
    
    //flags for what services are currently being run
    struct {
        BOOL loadingModel : 1;
        BOOL loadingMoreModel : 1;
    } _flags;
}

-(TIESummaryServerInteractorInput *)input {
	if(!_input) {
		_input = [TIESummaryServerInteractorInput new];
	}
    return _input;
}

-(void)beginLoad {
    if(_flags.loadingModel || _flags.loadingMoreModel) {
        return;
    }
	
	if(_loadedControllerModel) {
		//This method maintains that the loaded data never expires once loaded
		//if your model should refresh after a set time, put that logic here
		
		dispatch_async(dispatch_get_main_queue(), ^{
			//dispatched on next run loop to maintain asynchronosity contract of this method
			[_delegate interactor:self didFinishLoadingWithModel:_loadedControllerModel];
		});
		return;
	}
	
    _flags.loadingModel = YES;
    _input.loadMoreToken = nil;
    
    ECFCommand *command = [ECFCommand new];
    command.connection = self.connection;
    command.name = @"Epic.Mobile.TIE.LoadSummary";
    command.request = _input;
    command.responseClass = [TIESummaryServerInteractorLoadModelResponse class];
    [command beginExecuteWithOwner:self handler:^(TIESummaryServerInteractor *owner, ECFCommand *command) {
		
		// *** BEST PRACTICE ***
        // Make sure to always use owner in a mobile ECF command handler.
        // The command handles retaining owner if command option is set.  Using self in here
        // always retains this interactor and this command cant be cancelled on dealloc
		// *** END ***
		
        owner->_flags.loadingModel = NO;
		
        if(command.error) {
            [owner.delegate interactor:self didFinishLoadingWithError:command.error];
            return;
        }
        
        TIESummaryServerInteractorLoadModelResponse *response = command.response;
        
        //store model to support loading more
        _loadedControllerModel = [response viewModel];
        
        //store off token to support loading more
        _input.loadMoreToken = response.loadMoreToken;
        
        //callback to delegate when finished
        [owner.delegate interactor:self didFinishLoadingWithModel:_loadedControllerModel];
    }];
}

-(void)beginLoadMore {
    if(_flags.loadingModel || _flags.loadingMoreModel) {
        return;
    }
    
    _flags.loadingMoreModel = YES;
    
    ECFCommand *command = [ECFCommand new];
    command.connection = self.connection;
    command.name = @"Epic.Mobile.TIE.LoadSummary";
    command.request = _input;
    command.responseClass = [TIESummaryServerInteractorLoadModelResponse class];
    [command beginExecuteWithOwner:self handler:^(TIESummaryServerInteractor *owner, ECFCommand *command) {

		// *** BEST PRACTICE ***
		// Make sure to always use owner in a mobile ECF command handler.
		// The command handles retaining owner if command option is set.  Using self in here
		// always retains this interactor and this command cant be cancelled on dealloc
		// *** END ***
		
        owner->_flags.loadingMoreModel = NO;
		
        if(command.error) {
            [_delegate interactor:self didFinishLoadingWithError:command.error];
            return;
        }
		

		TIESummaryServerInteractorLoadModelResponse *response = command.response;
		
		//append newly loaded model
#warning Example code - add your own load more appending functionality here
		TIESummaryControllerModel *additionalValues = [response viewModel];
		_loadedControllerModel.favoriteItems = [_loadedControllerModel.favoriteItems arrayByAddingObjectsFromArray:additionalValues.favoriteItems];
		_loadedControllerModel.recentItems = [_loadedControllerModel.recentItems arrayByAddingObjectsFromArray:additionalValues.otherItems];
		_loadedControllerModel.otherItems = [_loadedControllerModel.otherItems arrayByAddingObjectsFromArray:additionalValues.otherItems];
		
		//store off token to support loading more
		_input.loadMoreToken = response.loadMoreToken;
		
		//callback to delegate when finished
		[owner.delegate interactor:self didFinishLoadingWithModel:_loadedControllerModel];
    }];
}

@end



//exposed input to outside module
@implementation TIESummaryServerInteractorInput

+(void)initializeClassDefinition:(ECFClassDefinition *)def {
#warning Example code - class ECF name
	def.name = @"Epic.Mobile.TIE.LoadSummary.Request";
}

@end
