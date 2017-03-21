//
//  Created by Lucas Stomberg on 1/6/17.
//  Copyright © 2017 Epic. All rights reserved.
//

#import "TIESummaryViewController.h"
#import "TIESummaryView.h"
#import "TIESummaryTableViewController.h"
#import "TIESummaryServerInteractor.h"
#import "TIESummaryTableView+ModelManagement.h"

@interface TIESummaryViewController (UI)
@property (nonatomic, readonly) TIESummaryView *summaryView;
@end

@interface TIESummaryViewController (ExposedMethods)
@end

@interface TIESummaryViewController () <TIESummaryServerInteractorDelegate>

//data provider
@property (nonatomic) TIESummaryServerInteractor *serverInteractor;

@end


@implementation TIESummaryViewController {
	
	//Child view controller
    TIESummaryTableViewController *_summaryTableViewController;
	
	//Required data for functioning
	TIESummaryControllerModel *_representedObject;
}

//*****************
//MARK: Lifecycle
//*****************

-(void)loadView {
    self.view = [TIESummaryView new];
}

-(void)viewDidLoad {
    [super viewDidLoad];
	
	
	//-----------------------
	// TABLE VIEW CONTROLLER
	//-----------------------
	_summaryTableViewController = [TIESummaryTableViewController new];
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

-(void)interactor:(TIESummaryServerInteractor *)interactor didFinishLoadingWithModel:(TIESummaryControllerModel *)model {
    [self.view enableView];
    
    //update view
    self.representedObject = model;
}

-(void)interactor:(TIESummaryServerInteractor *)interactor didFinishLoadingWithError:(NSError *)error {
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

-(void)setRepresentedObject:(TIESummaryControllerModel *)ro {
    _representedObject = ro;
	
	//Update view
    self.summaryView.footerLabel.text = ro.labelString;

	//convert our model to the table model
    TIESummaryTableViewModel *tableModel = [[TIESummaryTableViewModel alloc] initWithFavorites:ro.favoriteItems
																						recent:ro.recentItems
																						 other:ro.otherItems];
	//set represented object for table controller
	_summaryTableViewController.representedObject = tableModel;
}

@end









@implementation TIESummaryViewController (UI)

-(TIESummaryView*)summaryView {
	if([self.viewIfLoaded isKindOfClass:[TIESummaryView class]]) {
		return (TIESummaryView*)self.view;
	}
	return nil;
}

@end






@implementation TIESummaryViewController (ExposedMethods)

-(TIESummaryServerInteractorInput*)input {
	return self.serverInteractor.input;
}

-(TIESummaryServerInteractor *)serverInteractor {
	if(!_serverInteractor) {
		_serverInteractor = [TIESummaryServerInteractor new];
		_serverInteractor.delegate = self;
	}
	return _serverInteractor;
}

@end







@implementation TIESummaryControllerModel

@end


