//
//  CRDemoApp1_StoryboardSegueViewController.m
//  mvcDemoApp
//
//  Created by Chris Ricca on 4/15/14.
//  Copyright (c) 2014 Chris Ricca. All rights reserved.
//

#import "CRDemoApp1_StoryboardSegueViewController.h"

@interface CRDemoApp1_StoryboardSegueViewController ()

@property (strong, nonatomic) IBOutlet UILabel *diceResultLabel;
@property (strong, nonatomic) IBOutlet UILabel *sidesLabel;

@end

@implementation CRDemoApp1_StoryboardSegueViewController

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
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.sidesLabel.text = [NSString stringWithFormat:@"%d sides",self.die.sides];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTapRollDice:(id)sender {
    self.diceResultLabel.text = @"?";
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        
        self.diceResultLabel.text = [NSString stringWithFormat:@"%d", self.die.doRoll];
    });
}

@end
