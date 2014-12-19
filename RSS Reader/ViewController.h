//
//  ViewController.h
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 03/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
- (IBAction)loginButtonClicked:(id)sender;
- (IBAction)bakgroundButtonClicked:(id)sender;

@end
