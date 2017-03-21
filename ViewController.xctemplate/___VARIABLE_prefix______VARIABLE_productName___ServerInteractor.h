//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//
#import <Foundation/Foundation.h>

@class ___VARIABLE_prefix______VARIABLE_productName___ServerInteractor, ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorInput, ___VARIABLE_prefix______VARIABLE_productName___ControllerModel;



@protocol ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorDelegate <NSObject>
@required
-(void)interactor:(___VARIABLE_prefix______VARIABLE_productName___ServerInteractor*)interactor didFinishLoadingWithError:(NSError*)error;
-(void)interactor:(___VARIABLE_prefix______VARIABLE_productName___ServerInteractor*)interactor didFinishLoadingWithModel:(___VARIABLE_prefix______VARIABLE_productName___ControllerModel*)model;
@end



/*
 * @classdesign The server interactor black boxes loading of a controller's model.
 * @discussion  The view controller should be coded only for the model it needs on the client.
 * This class is responsible for converting 'input' to 'controller model' asynchronously.
 * This does imply a data binding between the server response and the view controller.
 * It also means the view controller doesn't need to know how its model was obtained
 */
@interface ___VARIABLE_prefix______VARIABLE_productName___ServerInteractor : NSObject

//required
@property (nonatomic) ECFConnection *connection;

@property (nonatomic, weak) id<___VARIABLE_prefix______VARIABLE_productName___ServerInteractorDelegate> delegate;

//exposed so outside module can set input data or set full model on the view controller
//if the view controller doesn't have a representedObject, it uses this interactor
//with the given input to load from the server
@property (nonatomic, readonly) ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorInput *input;

-(void)beginLoad;

//you can call this at any time.  The server interactor is responsible for storing
//the responses and being able to load more after the initial load
-(void)beginLoadMore;

@end




@interface ___VARIABLE_prefix______VARIABLE_productName___ServerInteractorInput : NSObject

#warning Example code - Load input property
@property (nonatomic) NSString *propertyID;

@end


