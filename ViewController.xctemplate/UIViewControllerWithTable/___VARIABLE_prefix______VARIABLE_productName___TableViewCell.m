//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___TableViewCell.h"
#import "___VARIABLE_prefix______VARIABLE_productName___TableViewModel.h"

@implementation ___VARIABLE_prefix______VARIABLE_productName___TableViewCell {
    NSMutableArray *_dynamicConstraints;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self) {
        _dynamicConstraints = [NSMutableArray new];
        
        //add views to self.contentView
        
        //remove call if Rainbow is in your branch
        [self styleDidChange];
    }
    return self;
}

+(BOOL)requiresConstraintBasedLayout {
    return YES;
}

-(void)updateConstraints {
    [self.contentView removeConstraints:_dynamicConstraints];
    [_dynamicConstraints removeAllObjects];
    
    //add constraints to _dynamicConstraints based on state
    
    
    [self.contentView addConstraints:_dynamicConstraints];
    [super updateConstraints];
}

-(void)prepareForReuse {
    [super prepareForReuse];
    
}

-(void)styleDidChange {
    //style all views
    
}

@end


@implementation ___VARIABLE_prefix______VARIABLE_productName___TableViewCell (SetData)

//DO NOT REFERENCE ANY _ IVARS JUST BECAUSE YOU ARE IN THE IMPLEMENTATION FILE
//ONLY SET PROPERTIES ON VIEWS
-(void)setData:(___VARIABLE_prefix______VARIABLE_productName___TableViewCellModel*)data {
    //set view properties
    
}

@end
