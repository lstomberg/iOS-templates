//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___ViewController.h"
#import "___VARIABLE_prefix______VARIABLE_productName___View.h"
#import "___VARIABLE_prefix______VARIABLE_productName___TableViewController.h"
#import "___VARIABLE_prefix______VARIABLE_productName___ServerInteractor.h"

@interface ___VARIABLE_prefix______VARIABLE_productName___ViewController () <___VARIABLE_prefix______VARIABLE_productName___ServerInteractorDelegate>
@property (nonatomic, readonly) ___VARIABLE_prefix______VARIABLE_productName___View *___VARIABLE_productNameLower___View;
@end

@implementation ___VARIABLE_prefix______VARIABLE_productName___ViewController {
    ___VARIABLE_prefix______VARIABLE_productName___TableViewController *____VARIABLE_productNameLower___TableViewController;
    ___VARIABLE_prefix______VARIABLE_productName___ServerInteractor *_serverInteractor;
}

-(instancetype)init {
    self = [super init];
    if(self) {
        ____VARIABLE_productNameLower___TableViewController = [___VARIABLE_prefix______VARIABLE_productName___TableViewController new];
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
    
    //set child view controllers on view
    [self addChildViewController:____VARIABLE_productNameLower___TableViewController];
    [self.___VARIABLE_productNameLower___View.contentView addSubview:____VARIABLE_productNameLower___TableViewController.tableView];
    [____VARIABLE_productNameLower___TableViewController.tableView constraintsForFillingSuperview].active = YES;
    [____VARIABLE_productNameLower___TableViewController didMoveToParentViewController:self];
    
    //refresh on table
    ____VARIABLE_productNameLower___TableViewController.refreshControl = [UIRefreshControl new];
    [____VARIABLE_productNameLower___TableViewController.refreshControl addTarget:self
                            action:@selector(_refreshData)
                  forControlEvents:UIControlEventValueChanged];
    ____VARIABLE_productNameLower___TableViewController.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:_STR(@"Refreshing Data",@"CONTEXT:")];
    
    
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
