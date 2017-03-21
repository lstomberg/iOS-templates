//
//  HaikuCategories.h
//  TemplateTests
//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 typeiron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIView (Asdf)
-(NSArray<NSLayoutConstraint*>*)constraintsForFillingSuperview;
@end

@class ECFConnection;

@interface UIViewController (epic)
-(ECFConnection*)epicConnection;
@end



@interface ECFCommand : NSObject
@property (nonatomic) ECFConnection *connection;

@property (nonatomic, copy) NSString *name;
@property (nonatomic) id request;
@property (nonatomic) id response;

@property (nonatomic) Class responseClass;

-(void)beginExecuteWithTarget:(id)target action:(SEL)action;
-(void)beginExecuteWithOwner:(id)owner handler:(void (^)(id owner, ECFCommand *command))handler;

@property NSError *error;
@end

@interface UIView (asdf)
-(void)enableView;
-(void)disableView;
-(void)addConstrainedSubview:(UIView*)view;
-(void)addConstrainedSubviews:(NSArray*)views;
@end

@interface NSError (asdf)
-(NSString*)localizedDescription;
@end


@interface ECFClassDefinition : NSObject
@property (nonatomic) NSString *name;
@end

@protocol ECFObject <NSObject>
+(void)initializeClassDefinition:(ECFClassDefinition*)def;
@end


@interface UIColor (epic)
+(UIColor*)themeSecondaryColor;
@end

@interface UIFont (epic)
+(UIFont*)themeFooterFont;
@end




#define _STR(a,b) @""
#define _IMG(a) [UIImage new]
