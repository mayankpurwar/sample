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
//    [[[[self.tabBarController tabBar]items]objectAtIndex:1]setEnabled:FALSE];
    
//     NSLog(@" %lu",(unsigned long)[[self.tabBarController tabBar]items].count);
//    NSArray *arr = [[self.tabBarController tabBar]items];
//    NSLog(@"%@",arr);
//   
//    [self.tabBarController.tabBar setItems:[NSArray arrayWithObjects:[arr objectAtIndex:0],[arr objectAtIndex:1], nil]];
////    [self.tabBarController setViewControllers:[NSArray arrayWithObjects:[arr objectAtIndex:0],[arr objectAtIndex:1], nil] animated:YES];
//    
////    [(UITabBarController*)self.navigationController.topViewController setSelectedIndex:3];
//
//    
//    
     NSLog(@" %lu",(unsigned long)[[self.tabBarController tabBar]items].count);
//
    
    
    
    
    
    
//    if ([self userDataIsValid])
    {
//        NSMutableArray* newArray = [NSMutableArray arrayWithArray:self.tabBarController.viewControllers];
        
        
        ViewController *vc = [[ViewController alloc] init];
//        [newArray replaceObjectAtIndex:0 withObject:vc];
//
//        [self.tabBarController setViewControllers:newArray animated:YES];
//        [self.tabBarController.tabBarController setSelectedIndex:1];
        
        
        NSMutableArray *viewControllersCopy = [[self.tabBarController viewControllers] mutableCopy];
        [viewControllersCopy replaceObjectAtIndex:0 withObject:vc];
        NSArray *modifiedViewControllers = [[NSArray alloc] initWithArray:viewControllersCopy];
        [self.tabBarController setViewControllers:modifiedViewControllers animated:NO];
        
        
        
        
        
        
        
        
        
        
        
        
//        
//        UIBarItem *itemToRemove = nil;
//        
//        // have we been purchased?
//            // see if purchase view controller is in the tab bar...
//            NSMutableArray *newItems = [NSMutableArray arrayWithArray:self.tabBarController.tabBar.items];
//            for (UIBarItem *tabItem in newItems)
//            {
//                if ([self.tabBarItem.title isEqualToString:@"Item"])
//                {
//                    //store this item to remove later
//                    itemToRemove = tabItem;
//                }
//            }
//            if (itemToRemove)
//            {
//                [newItems removeObject:itemToRemove];
//                [self.tabBarController.tabBar setItems:newItems animated:NO];
//            }
//        
//        
        
        
        
        
    }
}

    
    
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString *segueIdentifier = segue.identifier; //This object stores your segue's identifier
    NSLog(@"%@", segueIdentifier);
}


@end
