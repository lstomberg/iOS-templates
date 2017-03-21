//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___ViewController.h"
#import "___VARIABLE_prefix______VARIABLE_productName___View.h"

@interface ___VARIABLE_prefix______VARIABLE_productName___ViewController ()
@property (nonatomic, readonly) ___VARIABLE_prefix______VARIABLE_productName___View *___VARIABLE_productNameLower___View;
@end

@implementation ___VARIABLE_prefix______VARIABLE_productName___ViewController {
}

-(instancetype)init {
    self = [super init];
    if(self) {
        self.title = _STR(@"____VARIABLE_productName___",@"CONTEXT");
        
        //add bar button items
//        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(_addTapped)];
//        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:_IMG(@"image.png") style:UIBarButtonItemStylePlain target:self action:@selector(_imageTapped)];
    }
    return self;
}

-(___VARIABLE_prefix______VARIABLE_productName___View*)___VARIABLE_productNameLower___View {
    if([self.view isKindOfClass:[___VARIABLE_prefix______VARIABLE_productName___View class]]) {
        return (___VARIABLE_prefix______VARIABLE_productName___View*)self.view;
    }
    return nil;
}

-(void)loadView {
    self.view = [___VARIABLE_prefix______VARIABLE_productName___View new];
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    //set data on view
    
    
    //attach gestures and target/actions
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}


@end
