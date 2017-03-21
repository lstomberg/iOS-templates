//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ___VARIABLE_prefix______VARIABLE_productName___TableViewCellModel : NSObject

@end



@interface ___VARIABLE_prefix______VARIABLE_productName___TableViewModel : NSObject

-(instancetype)initWithData:(id)data NS_DESIGNATED_INITIALIZER;

@property (nonatomic, readonly) NSUInteger numberOfSections;
-(NSUInteger)numberOfRowsInSection:(NSUInteger)section;
-(___VARIABLE_prefix______VARIABLE_productName___TableViewCellModel*)cellModelForRowAtIndexPath:(NSIndexPath*)indexPath;

-(NSString*)titleForHeaderInSection:(NSUInteger)section;

@end
