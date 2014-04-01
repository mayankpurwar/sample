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
    
    
    NSMutableArray *viewControllersCopy1 = [[self.tabBarController viewControllers] mutableCopy];
    [viewControllersCopy1 removeObjectAtIndex:2];
    NSArray *modifiedViewControllers1 = [[NSArray alloc] initWithArray:viewControllersCopy1];
    [self.tabBarController setViewControllers:modifiedViewControllers1 animated:NO];

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

-(IBAction)ClickedBtn
{
    UIStoryboard*  sb = [UIStoryboard storyboardWithName:@"Main_iPhone"
                                                  bundle:nil];
    UIViewController* vc1 = [sb instantiateViewControllerWithIdentifier:@"ViewController"];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc1];
    NSMutableArray *viewControllersCopy = [[self.tabBarController viewControllers] mutableCopy];
    [viewControllersCopy replaceObjectAtIndex:0 withObject:nav];
    NSArray *modifiedViewControllers = [[NSArray alloc] initWithArray:viewControllersCopy];
    [self.tabBarController setViewControllers:modifiedViewControllers animated:NO];

}

    
    
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString *segueIdentifier = segue.identifier; //This object stores your segue's identifier
    NSLog(@"%@", segueIdentifier);
}


@end
