//
//  CRDemoAppViewController.m
//  mvcDemoApp
//
//  Created by Chris Ricca on 4/15/14.
//  Copyright (c) 2014 Chris Ricca. All rights reserved.
//

#import "CRDemoAppViewController.h"
#import "CRDemoApp1_StoryboardSegueViewController.h"

@interface CRDemoAppViewController ()

@end

@implementation CRDemoAppViewController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"1_StoryboardSegue"])
    {
        UINavigationController* navVC = segue.destinationViewController;
        
        CRDemoApp1_StoryboardSegueViewController* dieController = (CRDemoApp1_StoryboardSegueViewController*)navVC.topViewController;
        
        CRDemoAppDiceModel* die = [[CRDemoAppDiceModel alloc] initWithSides:6];
        
        dieController.die = die;
    }
}

@end
