/*
//  Created by Lucas Stomberg on 2/12/17.
//  Copyright © 2017 typeiron. All rights reserved.


// DO NOT COMMIT TO QA
 
 Sections of templated view controller you just created
  *Server
  *ViewController
  *Table
 
 
 => SERVER
 
 @class The server classes are responsible for your view controllers server communication.
 @discussion This class is publicly exposed on the view controller.  Its input is meant to be set directly from the caller.
 @property *input: Exposes data for creating the server request for loading The *input class is actually redefined in a category as the server request object internally.
 

 => VIEW CONTROLLER
 @class The main view controller.  Contains a table view controller and a custom UIView subclass as its self.view.  Implement whatever view layout you need in the View class.
 @discussion Exposes its loader and the full view controller model necessary to render its view.  The caller can either supply the full ViewModel or populate the *input on the serverInteractor.  This class will tell the serverInteractor to begin in viewWillAppear if self.representedObject == nil.
 
 => TABLE
 @class Contains a table.  Manages all layout and display of the table.  Does NOT have server communication.
 @discussion Server comm is handled by the root view controller.  This class only handles the table display as well as what happens when a cell is tapped.  Like the view controller, its model is fully exposed and it is expected that its representedObject is set externally.

