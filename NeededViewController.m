//
//  NeededViewController.m
//  Get My Grade
//
//  Created by Daniel Medina on 3/9/14.
//  Copyright (c) 2014 Medalabs Development. All rights reserved.
//

#import "NeededViewController.h"

@interface NeededViewController ()

@end

@implementation NeededViewController

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
//    self.screenName = @"Needed View";
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (screenSize.height > 480.0f) {
            /*Do iPhone 5 stuff here.*/
//            self.ga8.delegate = self;
//            self.per8.delegate = self;
//            self.sc8.delegate = self;
//            self.ga7.delegate = self;
//            self.per7.delegate = self;
//            self.sc7.delegate = self;
//            self.ga6.delegate = self;
//            self.per6.delegate = self;
//            self.sc6.delegate = self;
//            self.ga5.delegate = self;
//            self.per5.delegate = self;
//            self.sc5.delegate = self;
//            self.ga4.delegate = self;
//            self.per4.delegate = self;
//            self.sc4.delegate = self;
//            
//        } else {
//            /*Do iPhone Classic stuff here.*/
//            self.ga8.delegate = self;
//            self.ga7.delegate = self;
//            self.ga6.delegate = self;
//            self.per6.delegate = self;
//            self.per7.delegate = self;
//            self.per8.delegate = self;
//            self.sc6.delegate = self;
//            self.sc7.delegate = self;
//            self.sc8.delegate = self;
        }
    }
}

- (void)textFieldDidBeginEditing:(UITextField *)textfield
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

- (void)textFieldDidEndEditing:(UITextField *)textField
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
- (IBAction)Calculate
{
    float perc1 = [per1.text floatValue];
    float perc2 = [per2.text floatValue];
    float perc3 = [per3.text floatValue];
    float perc4 = [per4.text floatValue];
    float perc5 = [per5.text floatValue];
    float perc6 = [per6.text floatValue];
    float perc7 = [per7.text floatValue];
    float perc8 = [per8.text floatValue];
    
    
    float sco1 = [sc1.text floatValue];
    float sco2 = [sc2.text floatValue];
    float sco3 = [sc3.text floatValue];
    float sco4 = [sc4.text floatValue];
    float sco5 = [sc5.text floatValue];
    float sco6 = [sc6.text floatValue];
    float sco7 = [sc7.text floatValue];
    float sco8 = [gWanted.text floatValue];
    
    perc1 = perc1 / 100.00f;
    perc2 = perc2 / 100.00f;
    perc3 = perc3 / 100.00f;
    perc4 = perc4 / 100.00f;
    perc5 = perc5 / 100.00f;
    perc6 = perc6 / 100.00f;
    perc7 = perc7 / 100.00f;
    perc8 = perc8 / 100.00f;

    //sco8 = 0;
    
    float total = ((sco1*perc1))+(perc2*sco2)+(perc3*sco3)+(perc4*sco4)+(perc5*sco5)+(perc6*sco6)+(perc7*sco7);
    
    NSLog(@"\ntotal: %.2f\n sco8: %.2f\n",total,sco8);
    
    
    float step1a = sco8 - total;
    float step1b = step1a/perc8;
    
    NSLog(@"\nstep1a: %.2f\nstep1b: %.2f\n\n",step1a,step1b);
    
    int tot = step1b;
    float Tot = step1b;
    NSLog(@"\nfloat: %.2f",Tot);
    if(0<(Tot-tot)<1)
    {
        needed.text = [NSString stringWithFormat:@"%d",tot];
    }
    else
    {
        needed.text = [NSString stringWithFormat:@"%.2f",Tot];
        
    }
    
    if (perc8 == 0){
        [[per8 layer] setBorderColor:[[UIColor redColor]CGColor]];
        [[per8 layer] setBackgroundColor:[[UIColor redColor] CGColor]];
        per8.alpha = .8;
    } else {
        [[per8 layer] setBorderColor:[[UIColor blackColor]CGColor]];
        [[per8 layer] setBackgroundColor:[[UIColor clearColor] CGColor]];
        per8.alpha = 1;
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
    [sc7 resignFirstResponder];
    [gWanted resignFirstResponder];
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
    [gWanted resignFirstResponder];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
