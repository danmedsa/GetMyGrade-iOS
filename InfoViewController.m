//
//  InfoViewController.m
//  Class Score
//
//  Created by Daniel Medina on 8/15/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "InfoViewController.h"

@end

@implementation InfoViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationItem.title=@"Info";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Back"
                                   style:UIBarButtonItemStylePlain
                                   target:nil
                                   action:nil];
    self.navigationItem.backBarButtonItem=backButton;
}
- (IBAction) appWebsite
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.medalabsdevelopment.com"]];
}
- (IBAction) webloopeight
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.behance.com/loopeight"]];
}
- (IBAction) Donations
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.medalabsdevelopment.com/Donations.html"]];
}

- (IBAction)backk{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

