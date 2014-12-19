//
//  EditFriendsTableViewController.h
//  Textrama
//
//  Created by Michael Valdez on 12/13/14.
//  Copyright (c) 2014 Michael Valdez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface EditFriendsTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *allUsers;
@property (nonatomic, strong) PFUser *currentUser;
@property (nonatomic, strong) NSMutableArray *friends;

- (BOOL)isFriend:(PFUser *)user;

@end
