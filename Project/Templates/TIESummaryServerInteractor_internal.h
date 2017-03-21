//
//  Created by Lucas Stomberg on 2/12/17.
//  Copyright © 2017 typeiron. All rights reserved.
//

#import "TIESummaryServerInteractor.h"
#import "TIESummaryCommandObjects.h"

@interface TIESummaryServerInteractor (InternalUse)

//to use this, be sure to set the loadMoreToken on the interactor's input!
-(void)beginLoadMore;

@end

