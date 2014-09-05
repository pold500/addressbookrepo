//
//  MainTableViewController.h
//  AddressBook
//
//  Created by Developer on 04/09/14.
//  Copyright (c) 2014 TundraMobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableViewController : UITableViewController

    @property (setter = setNumberOfSections:) int sections;
    @property int rows;
    @property int columns;
    @property NSMutableArray * listOfParticipants;
    

@end
