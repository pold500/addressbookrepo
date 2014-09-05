//
//  AddContactViewController.m
//  AddressBook
//
//  Created by Developer on 03/09/14.
//  Copyright (c) 2014 TundraMobile. All rights reserved.
//

#import "AddContactViewController.h"
#import "TestClassViewController.h"

@interface AddContactViewController ()

@end

@implementation AddContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //add label programmatically
    self.navigationItem.title = @"Edit";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                              initWithTitle:@"Apply"
                                              style:UIBarButtonItemStylePlain
                                              target:self
                                              action:@selector(applyButtonClicked:)];
    
}

- (void) applyButtonClicked:(id)sender
{
    
    //Then you'd access it in your methods as:
    
    NSString *enteredText = _myTextField.text; // Or textField.text
  
    UIViewController*  mv = [[TestClassViewController alloc] init];
    [[self navigationController] pushViewController:mv animated:YES];
    
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesBegan:withEvent:");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
