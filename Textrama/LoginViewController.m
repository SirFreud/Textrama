//
//  LoginViewController.m
//  Textrama
//
//  Created by Michael Valdez on 12/12/14.
//  Copyright (c) 2014 Michael Valdez. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h> 

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithCustomView:[[UIView alloc] init]]];

}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
    
}

- (IBAction)login:(id)sender {
    
    NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if (username.length == 0 || password.length == 0) {
        UIAlertView *alertView = [[UIAlertView alloc]   initWithTitle:@"Oops!"
                                                              message:@"Please enter a username and password"
                                                              delegate:nil
                                                    cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alertView show];
    }
    else {
        [PFUser logInWithUsernameInBackground:username password:password
                                        block:^(PFUser *user, NSError *error) {
                                            if (error) {
                                                UIAlertView *alertView = [[UIAlertView alloc]  initWithTitle:@"Sorry!"
                                                                                                     message:@"Incorrect username or password"
                                                                                                    delegate:nil
                                                                                           cancelButtonTitle:@"OK"
                                                                                           otherButtonTitles:nil, nil];
                                                [alertView show];
                                                
                                            } else {
                                                [self.navigationController popToRootViewControllerAnimated:true];
                                            }
                                        }];
        
    }

}
@end
