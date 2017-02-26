//
//  OutOfViewController.m
//  Get My Grade
//
//  Created by Daniel Medina on 3/9/14.
//  Copyright (c) 2014 Medalabs Development. All rights reserved.
//

#import "OutOfViewController.h"

@interface OutOfViewController ()

@end

@implementation OutOfViewController

@synthesize cal1,cal2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    self.screenName = @"Out Of View";
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (void)textFieldDidBeginEditing:(UITextField *)txtfield
{
    donee.hidden = NO;
    
    /* should move views */
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (screenSize.height > 480.0f) {
            self.view.center = CGPointMake(self.view.center.x, self.view.center.y - 125);
        } else {
            self.view.center = CGPointMake(self.view.center.x, self.view.center.y - 215);
        }
    }
}

- (void)textFieldDidEndEditing:(UITextField *)txtfield
{
    donee.hidden = YES;
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (screenSize.height > 480.0f) {
            self.view.center = CGPointMake(self.view.center.x, self.view.center.y + 125);
        } else {
            self.view.center = CGPointMake(self.view.center.x, self.view.center.y + 215);
        }
    }
}

- (IBAction)backgroundTouch:(id)sender
{
    donee.hidden = YES;
    [cal1 resignFirstResponder];
    [cal2 resignFirstResponder];
}

- (IBAction)Calc
{
    if ([cal1.text isEqualToString:@""]||[cal2.text isEqualToString:@""])
    {
        calTot.text = @"Error";
        [calTot setTextColor:[UIColor redColor]];
    }
    else {
        c1 = [cal1.text floatValue];
        c2 = [cal2.text floatValue];
        
        int tot = (c1/c2)*100;
        float Tot = (c1/c2)*100;
        NSLog(@"integer: %d \n float: %.2f",tot,Tot);
        if(0<(Tot-tot)<1)
        {
            calTot.text = [NSString stringWithFormat:@"%d",tot];
        }
        else
        {
            calTot.text = [NSString stringWithFormat:@"%.2f",Tot];
            
        }
        [calTot setTextColor:[UIColor blueColor]];
    }
    
    [cal1 resignFirstResponder];
    [cal2 resignFirstResponder];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
