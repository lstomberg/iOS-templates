//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "TIESummaryTableViewCell.h"
#import "TIESummaryTableViewModel.h"
#import "HaikuCategories.h"

@implementation TIESummaryTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self) {
		_titleLabel = [UILabel new];
		
		[self.contentView addConstrainedSubview:_titleLabel];
		[NSLayoutConstraint activateConstraints:[_titleLabel constraintsForFillingSuperview]];
        
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

-(void)prepareForReuse {
    [super prepareForReuse];
	
	//provide any resetting necessary here
	
	//reset UI styles
	[self styleDidChange:nil];
	
	//reset target/actions
	//for(id target in _button.allTargets) {
	//	[_button removeTarget:target action:NULL forControlEvent:0];
	//}
}

-(void)styleDidChange:(id)style {
    //style all views here
    
}

@end
