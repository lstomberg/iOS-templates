//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "TIESummaryTableViewModel.h"



-(instancetype)init {
    return [self initWithData:nil];
}

-(instancetype)initWithData:(id)data {
    NSAssert(data, @"Must be created with data.");
    self = [super init];
    if(self) {
        _sectionData = [NSMutableArray new];
        //parse data into sections and cells
    }
    return self;
}

