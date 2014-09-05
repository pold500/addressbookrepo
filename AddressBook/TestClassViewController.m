//
//  TestClassViewController.m
//  AddressBook
//
//  Created by Developer on 03/09/14.
//  Copyright (c) 2014 TundraMobile. All rights reserved.
//

#import "TestClassViewController.h"
#import "AddContactViewController.h"


@interface TestClassViewController ()
-(void)addSubview: (UIView*)subView;
@end


@implementation TestClassViewController

- (void)addSubview: (UIView*)subView
{
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        @try {
            // do something that might throw an exception
            NSArray *subviewArray = [[NSBundle mainBundle] loadNibNamed:@"MainTableViewController" owner:self options:nil];
            UIView *mainView = [subviewArray objectAtIndex:0];
            [self addSubview:mainView];

        }
        @catch (NSException *exception) {
            // deal with the exception
        }
        @finally {
            // optional block of clean-up code
            // executed whether or not an exception occurred
        }
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Address Book";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Add"
                                                                             style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(buttonClicked:)];
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that
    // can be recreated.
    
    
    
}

- (void) buttonClicked:(id)sender
{
    
    UIViewController*  mv = [[AddContactViewController alloc] init];
    
    [[self navigationController] pushViewController:mv animated:YES];
    
}



@end
