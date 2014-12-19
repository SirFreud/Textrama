//
//  FriendsViewController.h
//  Textrama
//
//  Created by Michael Valdez on 12/14/14.
//  Copyright (c) 2014 Michael Valdez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "EditFriendsTableViewController.h"

@interface FriendsViewController : UITableViewController

@property (nonatomic, strong) PFRelation *friendsRelation;
@property (nonatomic, strong) NSArray *friends;

@end
