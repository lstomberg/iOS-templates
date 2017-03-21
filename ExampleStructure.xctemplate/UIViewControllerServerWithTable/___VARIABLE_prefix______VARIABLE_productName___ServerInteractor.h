//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ___VARIABLE_prefix______VARIABLE_productName___ServerInteractor;



//DELEGATE
@protocol ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorDelegate <NSObject>
@optional
-(void)___VARIABLE_productNameLower___ServerInteractor:(___VARIABLE_prefix______VARIABLE_productName___ServerInteractor*)interactor finishedWithError:(NSError*)error;
-(void)___VARIABLE_productNameLower___ServerInteractorDidFinishLoading:(___VARIABLE_prefix______VARIABLE_productName___ServerInteractor*)manager;
@end



//DATA
@interface ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorModel : NSObject
@end



//INTERACTOR
@interface ___VARIABLE_prefix______VARIABLE_productName___ServerInteractor : NSObject

@property (nonatomic) ECFConnection *connection;
@property (nonatomic, weak) id<___VARIABLE_prefix______VARIABLE_productName___ServerInteractorDelegate> delegate;

@property (nonatomic, readonly) ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorModel *data;

-(void)beginLoadData;

@end
