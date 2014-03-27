//
//  SecondViewController.m
//  tabbedtest
//
//  Created by Apple on 3/25/14.
//  Copyright (c) 2014 Mayank Purwar. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    NSString *segueIdentifier = segue.identifier; //This object stores your segue's identifier
    NSLog(@"%@", segueIdentifier);
}

@end
