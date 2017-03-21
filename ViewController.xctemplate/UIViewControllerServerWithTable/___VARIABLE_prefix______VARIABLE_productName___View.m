//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___View.h"

@implementation ___VARIABLE_prefix______VARIABLE_productName___View {
    NSMutableArray<NSLayoutConstraint*> *_dynamicConstraints;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        _dynamicConstraints = [NSMutableArray new];
        
        _contentView = [UIView new];
        [self addConstrainedSubview:_contentView];
        [_contentView constraintsForFillingSuperview].active = YES;
        
        //remove call if Rainbow is in your branch
        [self styleDidChange];
    }
    return self;
}

+(BOOL)requiresConstraintBasedLayout {
    return YES;
}

-(void)updateConstraints {
    [self removeConstraints:_dynamicConstraints];
    [_dynamicConstraints removeAllObjects];
    
    //add constraints to _dynamicConstraints based on state
    
    
    [self addConstraints:_dynamicConstraints];
    [super updateConstraints];
}

-(void)styleDidChange {
    //style all views
    
}

@end
