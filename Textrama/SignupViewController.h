//
//  SignupViewController.h
//  Textrama
//
//  Created by Michael Valdez on 12/12/14.
//  Copyright (c) 2014 Michael Valdez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;

- (IBAction)signup:(id)sender;

@end
