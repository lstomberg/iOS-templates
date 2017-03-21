//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//
#import "HaikuCategories.h"
#import <Foundation/Foundation.h>

@class TIESummaryServerInteractor, TIESummaryServerInteractorInput, TIESummaryControllerModel;



@protocol TIESummaryServerInteractorDelegate <NSObject>
@required
-(void)interactor:(TIESummaryServerInteractor*)interactor didFinishLoadingWithError:(NSError*)error;
-(void)interactor:(TIESummaryServerInteractor*)interactor didFinishLoadingWithModel:(TIESummaryControllerModel*)model;
@end



/*
 * @classdesign The server interactor black boxes loading of a controller's model.
 * @discussion  The view controller should be coded only for the model it needs on the client.
 * This class is responsible for converting 'input' to 'controller model' asynchronously.
 * This does imply a data binding between the server response and the view controller.
 * It also means the view controller doesn't need to know how its model was obtained
 */
@interface TIESummaryServerInteractor : NSObject

//required
@property (nonatomic) ECFConnection *connection;

@property (nonatomic, weak) id<TIESummaryServerInteractorDelegate> delegate;

//exposed so outside module can set input data or set full model on the view controller
//if the view controller doesn't have a representedObject, it uses this interactor
//with the given input to load from the server
@property (nonatomic, readonly) TIESummaryServerInteractorInput *input;

-(void)beginLoad;

//you can call this at any time.  The server interactor is responsible for storing
//the responses and being able to load more after the initial load
-(void)beginLoadMore;

@end




@interface TIESummaryServerInteractorInput : NSObject

#warning Example code - Load input property
@property (nonatomic) NSString *propertyID;

@end


