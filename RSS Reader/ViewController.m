//
//  ViewController.m
//  RSS Reader
//
//  Created by Kadir Anil Turgut on 03/09/14.
//  Copyright (c) 2014 Kadir Anil Turğut. All rights reserved.
//

#import "ViewController.h"
#import "LoginService.h"
#import "UserService.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonClicked:(id)sender {
    
    NSString *email = [_txtEmail text];
    NSString *password = [_txtPassword text];
    
    NSLog(@"email : %@", email);
    NSLog(@"password : %@", password);
    
    NSMutableDictionary * loginDict = [[NSMutableDictionary alloc] init];
    
    [loginDict setObject:@"kanilturgut@gmail.com" forKey:@"email"];
    [loginDict setObject:@"123" forKey:@"password"];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [[LoginService new] login:loginDict completion:^(BOOL isSuccess)   {
            if (isSuccess) {
                NSLog(@"Login Success");
                [self performSegueWithIdentifier:@"LoginSegue" sender:self];
            }
            else {
                NSLog(@"Login Failed");
            }
        }];
        
    });
}

- (IBAction)bakgroundButtonClicked:(id)sender {
    [self.view endEditing:YES];
}
@end
