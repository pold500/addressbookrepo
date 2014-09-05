//
//  MainTableViewController.m
//  AddressBook
//
//  Created by Developer on 04/09/14.
//  Copyright (c) 2014 TundraMobile. All rights reserved.
//

#import "MainTableViewController.h"
#import "BookRecord.h"


@interface MainTableViewController ()
    +(void)fillTheListWithSampleData:(NSMutableArray*) emptyList;
@end

@implementation MainTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        _listOfParticipants = [[NSMutableArray alloc] init];
         //[self saySomething:@"Hello, world!"];
        [MainTableViewController fillTheListWithSampleData : [self listOfParticipants]];
        [self setRows:3];
        [self setColumns:1];
        [self setNumberOfSections:3];
    }
    return self;
}

+(void)fillTheListWithSampleData:(NSMutableArray*) emptyList
{
    BookRecord* bookRecord = [[BookRecord alloc] init];
    [bookRecord setFirstName:@"John"];
    [bookRecord setLastName :@"Doe" ];
    [bookRecord setPhoneNumber:@"0966238167"];
    [emptyList addObject:bookRecord];
    
    [bookRecord setFirstName:@"Alice"];
    [bookRecord setLastName :@"Maiden" ];
    [bookRecord setPhoneNumber:@"722722722"];
    [emptyList addObject:bookRecord];
    
    [bookRecord setFirstName:@"Jonathan"];
    [bookRecord setLastName :@"Davis" ];
    [bookRecord setPhoneNumber:@"003565005225"];
    [emptyList addObject:bookRecord];
    
    bookRecord = nil; //release the memory
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
///////
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self columns];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self rows];
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Contacts";
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"MyReuseIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:MyIdentifier];
    }
    cell.textLabel.text = @"Test";
    return cell;
}
//////////////////////////////////////






/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
