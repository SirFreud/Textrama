//
//  ImageViewController.h
//  Textrama
//
//  Created by Michael Valdez on 1/3/15.
//  Copyright (c) 2015 Michael Valdez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface ImageViewController : UIViewController

@property (nonatomic, strong) PFObject *message;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end
