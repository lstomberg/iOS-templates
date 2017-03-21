//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___ServerInteractor.h"

@implementation ___VARIABLE_prefix______VARIABLE_productName___ServerInteractor

-(void)beginLoadData {
    
}

-(void)finishedLoadingData:(ECFCommand*)command {
    if(command.error) {
        if([_delegate respondsToSelector:@selector(___VARIABLE_productNameLower___ServerInteractor:finishedWithError:)]) {
            [_delegate ___VARIABLE_productNameLower___ServerInteractor:self finishedWithError:command.error];
        }
        return;
    }
    
    ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorModel *data;
    
    //process data
    
    
    //set current data
    _data = data;
    
    if([_delegate respondsToSelector:@selector(___VARIABLE_productNameLower___ServerInteractorDidFinishLoading:)]) {
        [_delegate ___VARIABLE_productNameLower___ServerInteractorDidFinishLoading:self];
    }
}

@end


@implementation ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorModel
@end
