//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___TableViewModel.h"

@implementation ___VARIABLE_prefix______VARIABLE_productName___TableViewCellModel
@end



@interface ____VARIABLE_prefix______VARIABLE_productName___TableViewSectionModel : NSObject
@property (nonatomic, copy) NSArray<___VARIABLE_prefix______VARIABLE_productName___TableViewCellModel*> *data;
@property (nonatomic) NSString *headerTitle;
@property (nonatomic) NSString *footerTitle;
@end
@implementation ____VARIABLE_prefix______VARIABLE_productName___TableViewSectionModel
@end



@implementation ___VARIABLE_prefix______VARIABLE_productName___TableViewModel {
    NSMutableArray<____VARIABLE_prefix______VARIABLE_productName___TableViewSectionModel*> *_sectionData;
}

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

-(NSUInteger)numberOfSections {
    return _sectionData.count;
}

-(NSUInteger)numberOfRowsInSection:(NSUInteger)section {
    return _sectionData[section].data.count;
}

-(___VARIABLE_prefix______VARIABLE_productName___TableViewCellModel *)cellModelForRowAtIndexPath:(NSIndexPath *)indexPath {
    return _sectionData[[indexPath indexAtPosition:0]].data[[indexPath indexAtPosition:1]];
}

-(NSString *)titleForHeaderInSection:(NSUInteger)section {
    return _sectionData[section].headerTitle;
}

@end
