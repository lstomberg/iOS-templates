//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___View.h"


@implementation ___VARIABLE_prefix______VARIABLE_productName___View

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        _headerView = [UIView new];
        _contentView = [UIView new];
        _footerLabel = [UILabel new];
		
        NSDictionary *views = NSDictionaryOfVariableBindings(_headerView,_contentView,_footerLabel);
        [self addConstrainedSubviews:views.allValues];
		
		id vConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_headerView][_contentView][_footerLabel]|"
																  options:NSLayoutFormatAlignAllLeft|NSLayoutFormatAlignAllRight
																  metrics:nil
																	views:views];
		[NSLayoutConstraint activateConstraints:vConstraints];
		
		id hConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_headerView]|"
																  options:0
																  metrics:nil
																	views:views];
		[NSLayoutConstraint activateConstraints:hConstraints];
		
        //remove call if Rainbow is in your branch
        [self styleDidChange:nil];
    }
    return self;
}


-(void)updateConstraints {
    [super updateConstraints];
	
	//DYNAMIC CONSTRAINT ADJUSTMENTS
	
	// *** BEST PRACTICE ***
	// All constraints that might be modified during execution should be activated in
	// the -updateConstraints method.  Any that are never changing can be added in -initWithFrame:
	// *** END ***
}

-(void)styleDidChange:(id)style {
    //style all views.  Use style if Rainbow is in your branch.
	
	_footerLabel.textColor = [UIColor themeSecondaryColor];
	_footerLabel.font = [UIFont themeFooterFont];
}

@end
