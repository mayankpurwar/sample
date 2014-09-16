//
//  ViewController.m
//  StoryBoardTesting
//
//  Created by Apple on 3/25/14.
//  Copyright (c) 2014 Mayank Purwar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [lbl setText:@"mayank"];
    
    self.navigationItem.titleView = [APP_DELEGATE viewFornavigationBar];
    
    
    [btn setImage:[UIImage  imageNamed:@"2.jpg"] forState:UIControlStateNormal];
    btn.imageView.contentMode = UIViewContentModeLeft;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
