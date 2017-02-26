//
//  GradesViewController.h
//  GetMyGrade
//
//  Created by Daniel Medina on 4/24/14.
//  Copyright (c) 2014 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "OutOfViewController.h"
#import "NeededViewController.h"
//#import "GAITrackedViewController.h"


@interface GradesViewController : UIViewController <UITextFieldDelegate>
{
    
    UIViewController *ClassScorevc;  // view controller of first tab
    UIViewController *OutOfvc;
    UIViewController *Neededvc;
    
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
    IBOutlet UITextField *sc8;
    
    IBOutlet UIButton *donee;
    IBOutlet UIButton *calculate;
    IBOutlet UIButton *hidekey;
    
    IBOutlet UILabel *score;
    
    float perc1;
    float perc2;
    float perc3;
    float perc4;
    float perc5;
    float perc6;
    float perc7;
    float perc8;
    
    float sco1;
    float sco2;
    float sco3;
    float sco4;
    float sco5;
    float sco6;
    float sco7;
    float sco8;
    
    
    float total;
    
    IBOutlet UIButton *info;
    
}

@property (nonatomic, retain) UIViewController *ClassScorevc;
@property (nonatomic, retain) UIViewController *OutOfvc;
@property (nonatomic, retain) UIViewController *Neededvc;

@property (nonatomic, retain) IBOutlet UITextField *ga1;
@property (nonatomic, retain) IBOutlet UITextField *ga2;
@property (nonatomic, retain) IBOutlet UITextField *ga3;
@property (nonatomic, retain) IBOutlet UITextField *ga4;
@property (nonatomic, retain) IBOutlet UITextField *ga5;
@property (nonatomic, retain) IBOutlet UITextField *ga6;
@property (nonatomic, retain) IBOutlet UITextField *ga7;
@property (nonatomic, retain) IBOutlet UITextField *ga8;

@property (nonatomic, retain) IBOutlet UITextField *per1;
@property (nonatomic, retain) IBOutlet UITextField *per2;
@property (nonatomic, retain) IBOutlet UITextField *per3;
@property (nonatomic, retain) IBOutlet UITextField *per4;
@property (nonatomic, retain) IBOutlet UITextField *per5;
@property (nonatomic, retain) IBOutlet UITextField *per6;
@property (nonatomic, retain) IBOutlet UITextField *per7;
@property (nonatomic, retain) IBOutlet UITextField *per8;

@property (nonatomic, retain) IBOutlet UITextField *sc1;
@property (nonatomic, retain) IBOutlet UITextField *sc2;
@property (nonatomic, retain) IBOutlet UITextField *sc3;
@property (nonatomic, retain) IBOutlet UITextField *sc4;
@property (nonatomic, retain) IBOutlet UITextField *sc5;
@property (nonatomic, retain) IBOutlet UITextField *sc6;
@property (nonatomic, retain) IBOutlet UITextField *sc7;
@property (nonatomic, retain) IBOutlet UITextField *sc8;


@property (nonatomic, retain) IBOutlet UIButton *calculate;

- (IBAction)Calculate:(id)sender;

- (IBAction)doneButton:(id)sender;
- (IBAction)backgroundTouch:(id)sender;


@end
