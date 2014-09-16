//
//  AppDelegate.h
//  StoryBoardTesting
//
//  Created by Apple on 3/25/14.
//  Copyright (c) 2014 Mayank Purwar. All rights reserved.
//

#import <UIKit/UIKit.h>


#define IS_IPHONE_5         ([UIScreen mainScreen].bounds.size.height == 568)
//#define IS_IPAD                 ([UIScreen mainScreen].bounds.size.width == 768)

#define APP_DELEGATE        ((AppDelegate *)[UIApplication sharedApplication].delegate)



@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


-(UIView *)viewFornavigationBar;

@end
