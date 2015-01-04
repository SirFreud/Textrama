//
//  InboxTableViewController.h
//  Textrama
//
//  Created by Michael Valdez on 12/7/14.
//  Copyright (c) 2014 Michael Valdez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <Parse/Parse.h>
@interface InboxTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) PFObject *selectedMesaage;
@property (nonatomic, strong) MPMoviePlayerController *moviePlayer;

- (IBAction)signout:(id)sender;

@end
