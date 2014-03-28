//
//  FirstViewController.m
//  tabbedtest
//
//  Created by Apple on 3/25/14.
//  Copyright (c) 2014 Mayank Purwar. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    NSMutableArray *viewControllersCopy = [[self.tabBarController viewControllers] mutableCopy];
    [viewControllersCopy removeObjectAtIndex:2];
    NSArray *modifiedViewControllers = [[NSArray alloc] initWithArray:viewControllersCopy];
    [self.tabBarController setViewControllers:modifiedViewControllers animated:NO];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

-(IBAction)ClickedBtn
{

     NSLog(@" %lu",(unsigned long)[[self.tabBarController tabBar]items].count);

        ViewController *vc = [[ViewController alloc] init];
        NSMutableArray *viewControllersCopy = [[self.tabBarController viewControllers] mutableCopy];
        [viewControllersCopy replaceObjectAtIndex:0 withObject:vc];
        NSArray *modifiedViewControllers = [[NSArray alloc] initWithArray:viewControllersCopy];
        [self.tabBarController setViewControllers:modifiedViewControllers animated:NO];

}

    
    
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString *segueIdentifier = segue.identifier; //This object stores your segue's identifier
    NSLog(@"%@", segueIdentifier);
}


@end
