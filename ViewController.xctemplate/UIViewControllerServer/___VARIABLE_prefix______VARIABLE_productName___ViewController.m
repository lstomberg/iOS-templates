//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___ViewController.h"
#import "___VARIABLE_prefix______VARIABLE_productName___View.h"
#import "___VARIABLE_prefix______VARIABLE_productName___ServerInteractor.h"

@interface ___VARIABLE_prefix______VARIABLE_productName___ViewController () <___VARIABLE_prefix______VARIABLE_productName___ServerInteractorDelegate>
@property (nonatomic, readonly) ___VARIABLE_prefix______VARIABLE_productName___View *___VARIABLE_productNameLower___View;
@end

@implementation ___VARIABLE_prefix______VARIABLE_productName___ViewController {
    ___VARIABLE_prefix______VARIABLE_productName___ServerInteractor *_serverInteractor;
}

-(instancetype)init {
    self = [super init];
    if(self) {
        _serverInteractor = [___VARIABLE_prefix______VARIABLE_productName___ServerInteractor new];
        _serverInteractor.delegate = self;
        
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
    
    _serverInteractor.connection = self.epicConnection;
    [_serverInteractor beginLoadData];
    [self.view disableView];
}


-(void)_refreshData {
    [_serverInteractor beginLoadData];
}


//********************************
//MARK: Server Interactor Delegate
//********************************

-(void)___VARIABLE_productNameLower___ServerInteractorDidFinishLoading:(___VARIABLE_prefix______VARIABLE_productName___ServerInteractor *)manager {
    [self.view enableView];
    
    //update view
}

-(void)___VARIABLE_productNameLower___ServerInteractor:(___VARIABLE_prefix______VARIABLE_productName___ServerInteractor *)interactor finishedWithError:(NSError *)error {
    [self.view enableView];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:_STR(@"Alert",@"CONTEXT: ")
                                                                   message:error.localizedDescription
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
}


@end
