//
//  GradesViewController.m
//  GetMyGrade
//
//  Created by Daniel Medina on 4/24/14.
//  Copyright (c) 2014 Medalabs Development. All rights reserved.
//

#import "GradesViewController.h"

@interface GradesViewController ()

@end

@implementation GradesViewController
@synthesize ga1,ga2,ga3,ga4,ga5,ga6,ga7,ga8,per1,per2,per3,per4,per5,per6,per7,per8,sc1,sc2,sc3,sc4,sc5,sc6,sc7,sc8;
@synthesize calculate;
@synthesize ClassScorevc,OutOfvc,Neededvc;

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    self.screenName = @"Grade View";
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (screenSize.height > 480.0f) {
            /*Do iPhone 5 stuff here.*/
            self.ga8.delegate = self;
            self.per8.delegate = self;
            self.sc8.delegate = self;
            self.ga7.delegate = self;
            self.per7.delegate = self;
            self.sc7.delegate = self;
            self.ga6.delegate = self;
            self.per6.delegate = self;
            self.sc6.delegate = self;
            self.ga5.delegate = self;
            self.per5.delegate = self;
            self.sc5.delegate = self;
//            self.ga4.delegate = self;
//            self.per4.delegate = self;
//            self.sc4.delegate = self;
            
        } else {
            /*Do iPhone Classic stuff here.*/
            self.ga8.delegate = self;
            self.ga7.delegate = self;
            self.ga6.delegate = self;
            self.per6.delegate = self;
            self.per7.delegate = self;
            self.per8.delegate = self;
            self.sc6.delegate = self;
            self.sc7.delegate = self;
            self.sc8.delegate = self;
        }
    }
}

-(IBAction)doneButton:(id)sender
{
    [sender resignFirstResponder];
    [ga1 resignFirstResponder];
    [ga2 resignFirstResponder];
    [ga3 resignFirstResponder];
    [ga4 resignFirstResponder];
    [ga5 resignFirstResponder];
    [ga6 resignFirstResponder];
    [ga7 resignFirstResponder];
    [ga8 resignFirstResponder];
    [per8 resignFirstResponder];
    [per7 resignFirstResponder];
    [per6 resignFirstResponder];
    [per5 resignFirstResponder];
    [per4 resignFirstResponder];
    [per3 resignFirstResponder];
    [per2 resignFirstResponder];
    [per1 resignFirstResponder];
    [sc1 resignFirstResponder];
    [sc2 resignFirstResponder];
    [sc3 resignFirstResponder];
    [sc4 resignFirstResponder];
    [sc5 resignFirstResponder];
    [sc6 resignFirstResponder];
    [sc7 resignFirstResponder];
    [sc8 resignFirstResponder];
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

- (IBAction)Calculate:(id)sender
{
    perc1 = [per1.text floatValue];perc2 = [per2.text floatValue];perc3 = [per3.text floatValue];perc4 = [per4.text floatValue];perc5 = [per5.text floatValue];perc6 = [per6.text floatValue];perc7 = [per7.text floatValue];perc8 = [per8.text floatValue];
    
    sco1 = [sc1.text floatValue];sco2 = [sc2.text floatValue];sco3 = [sc3.text floatValue];sco4 = [sc4.text floatValue];sco5 = [sc5.text floatValue];sco5 = [sc5.text floatValue];sco6 = [sc6.text floatValue];sco7 = [sc7.text floatValue];sco8 = [sc8.text floatValue];
    
    perc1 = perc1 / 100.00f;perc2 = perc2 / 100.00f;perc3 = perc3 / 100.00f;perc4 = perc4 / 100.00f;perc5 = perc5 / 100.00f;perc6 = perc6 / 100.00f;perc7 = perc7 / 100.00f;perc8 = perc8 / 100.00f;
    
    total = (perc1*sco1)+(perc2*sco2)+(perc3*sco3)+(perc4*sco4)+(perc5*sco5)+(perc6*sco6)+(perc7*sco7)+(perc8*sco8);
    
    int tot = total;
    float Tot = total;
    NSLog(@"integer: %d \n float: %.2f",tot,Tot);
    if(0<(Tot-tot)<1)
    {
        score.text = [NSString stringWithFormat:@"%d",tot];
    }
    else
    {
        score.text = [NSString stringWithFormat:@"%.2f",Tot];
        
    }
    
    [ga1 resignFirstResponder];
    [ga2 resignFirstResponder];
    [ga3 resignFirstResponder];
    [ga4 resignFirstResponder];
    [ga5 resignFirstResponder];
    [ga6 resignFirstResponder];
    [ga7 resignFirstResponder];
    [ga8 resignFirstResponder];
    [per8 resignFirstResponder];
    [per7 resignFirstResponder];
    [per6 resignFirstResponder];
    [per5 resignFirstResponder];
    [per4 resignFirstResponder];
    [per3 resignFirstResponder];
    [per2 resignFirstResponder];
    [per1 resignFirstResponder];
    [sc1 resignFirstResponder];
    [sc2 resignFirstResponder];
    [sc3 resignFirstResponder];
    [sc4 resignFirstResponder];
    [sc5 resignFirstResponder];
    [sc6 resignFirstResponder];
    [sc7 resignFirstResponder];
    [sc8 resignFirstResponder];
}

- (IBAction)backgroundTouch:(id)sender
{
    donee.hidden = YES;
    [ga1 resignFirstResponder];
    [ga2 resignFirstResponder];
    [ga3 resignFirstResponder];
    [ga4 resignFirstResponder];
    [ga5 resignFirstResponder];
    [ga6 resignFirstResponder];
    [ga7 resignFirstResponder];
    [ga8 resignFirstResponder];
    [per8 resignFirstResponder];
    [per7 resignFirstResponder];
    [per6 resignFirstResponder];
    [per5 resignFirstResponder];
    [per4 resignFirstResponder];
    [per3 resignFirstResponder];
    [per2 resignFirstResponder];
    [per1 resignFirstResponder];
    [sc1 resignFirstResponder];
    [sc2 resignFirstResponder];
    [sc3 resignFirstResponder];
    [sc4 resignFirstResponder];
    [sc5 resignFirstResponder];
    [sc6 resignFirstResponder];
    [sc7 resignFirstResponder];
    [sc8 resignFirstResponder];
}
/*
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    switch (item.tag) {
        case 0:
            if (ClassScorevc == nil) {
                
                
                
            }
            break;
        case 1:
            if (OutOfvc == nil) {
                
                UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
                OutOfvc = [storyboard instantiateViewControllerWithIdentifier:@"OutOf"];
                [OutOfvc setModalPresentationStyle:UIModalPresentationFullScreen];
                [self presentModalViewController:OutOfvc animated:NO];
                
            }
            break;
        case 2:
            if (Neededvc == nil) {
                UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
                Neededvc = [storyboard instantiateViewControllerWithIdentifier:@"Needed"];
                [Neededvc setModalPresentationStyle:UIModalPresentationFullScreen];
                [self presentModalViewController:Neededvc animated:NO];
            }
            break;
        default:
            break;
    }
}
*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
