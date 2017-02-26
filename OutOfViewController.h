//
//  OutOfViewController.h
//  Get My Grade
//
//  Created by Daniel Medina on 3/9/14.
//  Copyright (c) 2014 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "GAITrackedViewController.h"

@interface OutOfViewController : UIViewController <UITextFieldDelegate>
{
    UIViewController *ClassScorevc;  // view controller of first tab
    UIViewController *OutOfvc;
    UIViewController *Neededvc;
    
    IBOutlet UIButton *donee;
    
    IBOutlet UITextField *cal1;
    IBOutlet UITextField *cal2;
    
    IBOutlet UILabel *calTot;

    IBOutlet UIButton *calc;
    
    float c1;
    float c2;
}
@property (nonatomic, retain) IBOutlet UITextField *cal1;
@property (nonatomic, retain) IBOutlet UITextField *cal2;


- (IBAction)Calc;
- (IBAction)backgroundTouch:(id)sender;

@end
