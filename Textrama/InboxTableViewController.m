//
//  InboxTableViewController.m
//  Textrama
//
//  Created by Michael Valdez on 12/7/14.
//  Copyright (c) 2014 Michael Valdez. All rights reserved.
//

#import "InboxTableViewController.h"
#import <Parse/Parse.h>
@interface InboxTableViewController ()

@end

@implementation InboxTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        NSLog(@"current user: %@", currentUser.username);
    } else {
        [self performSegueWithIdentifier:@"showLogin" sender:self];
    }
    
    
    

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (IBAction)signout:(id)sender {
    [PFUser logOut];
    [self performSegueWithIdentifier:@"showLogin" sender:self];
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showLogin"]) {
        [segue.destinationViewController setHidesBottomBarWhenPushed:true];
    }
}
@end




