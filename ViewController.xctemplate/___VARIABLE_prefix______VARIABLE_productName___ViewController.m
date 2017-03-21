//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "___VARIABLE_prefix______VARIABLE_productName___ViewController.h"
#import "___VARIABLE_prefix______VARIABLE_productName___View.h"
#import "___VARIABLE_prefix______VARIABLE_productName___TableViewController.h"
#import "___VARIABLE_prefix______VARIABLE_productName___ServerInteractor.h"
#import "___VARIABLE_prefix______VARIABLE_productName___TableView+ModelManagement.h"

@interface ___VARIABLE_prefix______VARIABLE_productName___ViewController (UI)
@property (nonatomic, readonly) ___VARIABLE_prefix______VARIABLE_productName___View *summaryView;
@end

@interface ___VARIABLE_prefix______VARIABLE_productName___ViewController (ExposedMethods)
@end

@interface ___VARIABLE_prefix______VARIABLE_productName___ViewController () <___VARIABLE_prefix______VARIABLE_productName___ServerInteractorDelegate>

//data provider
@property (nonatomic) ___VARIABLE_prefix______VARIABLE_productName___ServerInteractor *serverInteractor;

@end


@implementation ___VARIABLE_prefix______VARIABLE_productName___ViewController {
	
	//Child view controller
    ___VARIABLE_prefix______VARIABLE_productName___TableViewController *_summaryTableViewController;
	
	//Required data for functioning
	___VARIABLE_prefix______VARIABLE_productName___ControllerModel *_representedObject;
}

//*****************
//MARK: Lifecycle
//*****************

-(void)loadView {
    self.view = [___VARIABLE_prefix______VARIABLE_productName___View new];
}

-(void)viewDidLoad {
    [super viewDidLoad];
	
	
	//-----------------------
	// TABLE VIEW CONTROLLER
	//-----------------------
	_summaryTableViewController = [___VARIABLE_prefix______VARIABLE_productName___TableViewController new];
	[self addChildViewController:_summaryTableViewController];
	[self.summaryView.contentView addSubview:_summaryTableViewController.tableView];
	[NSLayoutConstraint activateConstraints:[_summaryTableViewController.tableView constraintsForFillingSuperview]];
	[_summaryTableViewController didMoveToParentViewController:self];
	[_summaryTableViewController.refreshControl addTarget:self
												   action:@selector(_refreshData)
										 forControlEvents:UIControlEventValueChanged];
	
	
	//--------------------------------
	// CONFIGURE CONTROLLER PROPERTIES
	//--------------------------------
	
	/* 
#warning Example code - title
	self.title = _STR(@"Summary",@"CONTEXT");
	 */
	
	/*
#warning Example code - bar button items
	 UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
		target:self
		action:@selector(_addTapped)];
	 self.navigationItem.leftBarButtonItem = left;
	 
	 UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithImage:_IMG(@"image.png")
		style:UIBarButtonItemStylePlain
		target:self
		action:@selector(_imageTapped)];
	 self.navigationItem.rightBarButtonItem = right;
	 */
	
	//---------------------
	// VIEW CONFIGURATION
	//---------------------
	
	/*
#warning Example code - gestures
	UIGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self
																	   action:@selector(_panGestureRecognized:)];
	[self.view addGestureRecognizer:pan];
	
	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
																		  action:@selector(_tapGestureRecognized:)];
	tap.numberOfTapsRequired = 2;
	[self.view addGestureRecognizer:tap];
	*/
	
	/*
#warning Example code - target/action
	UIButton *goGutton;
	[button addTarget:self
			   action:@selector(_goButtonTapped)
	 forControlEvents:UIControlEventTouchUpInside];
	 */
	
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	
	
	//load data on appearance if we have no data
    if(!_representedObject) {
        _serverInteractor.connection = self.epicConnection;
        [_serverInteractor beginLoad];
        [self.view disableView];
    }
}


-(void)_refreshData {
    [_serverInteractor beginLoad];
    [self.view disableView];
}

//********************************
//MARK: Server Interactor Delegate
//********************************

-(void)interactor:(___VARIABLE_prefix______VARIABLE_productName___ServerInteractor *)interactor didFinishLoadingWithModel:(___VARIABLE_prefix______VARIABLE_productName___ControllerModel *)model {
    [self.view enableView];
    
    //update view
    self.representedObject = model;
}

-(void)interactor:(___VARIABLE_prefix______VARIABLE_productName___ServerInteractor *)interactor didFinishLoadingWithError:(NSError *)error {
    [self.view enableView];
	
#warning Example code - alert on error
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:_STR(@"Alert",@"Some Context")
                                                                   message:error.localizedDescription
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
}

//**************************
//MARK: Represented Object
//**************************

-(void)setRepresentedObject:(___VARIABLE_prefix______VARIABLE_productName___ControllerModel *)ro {
    _representedObject = ro;
	
	//Update view
    self.summaryView.footerLabel.text = ro.labelString;

	//convert our model to the table model
    ___VARIABLE_prefix______VARIABLE_productName___TableViewModel *tableModel = [[___VARIABLE_prefix______VARIABLE_productName___TableViewModel alloc] initWithFavorites:ro.favoriteItems
																						recent:ro.recentItems
																						 other:ro.otherItems];
	//set represented object for table controller
	_summaryTableViewController.representedObject = tableModel;
}

@end









@implementation ___VARIABLE_prefix______VARIABLE_productName___ViewController (UI)

-(___VARIABLE_prefix______VARIABLE_productName___View*)summaryView {
	if([self.viewIfLoaded isKindOfClass:[___VARIABLE_prefix______VARIABLE_productName___View class]]) {
		return (___VARIABLE_prefix______VARIABLE_productName___View*)self.view;
	}
	return nil;
}

@end






@implementation ___VARIABLE_prefix______VARIABLE_productName___ViewController (ExposedMethods)

-(___VARIABLE_prefix______VARIABLE_productName___ServerInteractorInput*)input {
	return self.serverInteractor.input;
}

-(___VARIABLE_prefix______VARIABLE_productName___ServerInteractor *)serverInteractor {
	if(!_serverInteractor) {
		_serverInteractor = [___VARIABLE_prefix______VARIABLE_productName___ServerInteractor new];
		_serverInteractor.delegate = self;
	}
	return _serverInteractor;
}

@end







@implementation ___VARIABLE_prefix______VARIABLE_productName___ControllerModel

@end


