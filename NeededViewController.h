//
//  NeededViewController.h
//  Get My Grade
//
//  Created by Daniel Medina on 3/9/14.
//  Copyright (c) 2014 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "GAITrackedViewController.h"


@interface NeededViewController : UIViewController <UITextFieldDelegate>
{
    UIViewController *ClassScorevc;  // view controller of first tab
    UIViewController *OutOfvc;
    UIViewController *Neededvc;
    
    IBOutlet UIButton *clac;
    IBOutlet UIButton *donee;

    IBOutlet UILabel *needed;
    
    IBOutlet UITextField *ga1;
    IBOutlet UITextField *ga2;
    IBOutlet UITextField *ga3;
    IBOutlet UITextField *ga4;
    IBOutlet UITextField *ga5;
    IBOutlet UITextField *ga6;
    IBOutlet UITextField *ga7;
    IBOutlet UITextField *ga8;
    
    IBOutlet UITextField *per1;
    IBOutlet UITextField *per2;
    IBOutlet UITextField *per3;
    IBOutlet UITextField *per4;
    IBOutlet UITextField *per5;
    IBOutlet UITextField *per6;
    IBOutlet UITextField *per7;
    IBOutlet UITextField *per8;
    
    IBOutlet UITextField *sc1;
    IBOutlet UITextField *sc2;
    IBOutlet UITextField *sc3;
    IBOutlet UITextField *sc4;
    IBOutlet UITextField *sc5;
    IBOutlet UITextField *sc6;
    IBOutlet UITextField *sc7;
    IBOutlet UITextField *gWanted;

}

-(IBAction)Calculate;

-(IBAction)backgroundTouch:(id)sender;


@end
