//
//  AppDelegate.m
//  UITabBarController_Demo_0514
//
//  Created by pan dabo on 14-5-14.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeController.h"
#import "MessageController.h"
#import "SearchController.h"
#import "SetController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    HomeController *homeCtrl = [[HomeController alloc] init];
    UITabBarItem *homeItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    homeCtrl.tabBarItem = homeItem;
    [homeItem release];
    
    
    MessageController *mesCtrl = [[MessageController alloc] init];
    mesCtrl.view.backgroundColor = [UIColor redColor];
    UITabBarItem *mesItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:2];
    mesCtrl.tabBarItem = mesItem;
    [mesItem release];
    
    SearchController *searCtrl = [[SearchController alloc] init];
    searCtrl.view.backgroundColor = [UIColor blueColor];
    UITabBarItem *serarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:3];
    searCtrl.tabBarItem = serarItem;
    [serarItem release];
    
    
    SetController *setCtrl = [[SetController alloc] init];
    setCtrl.view.backgroundColor =[UIColor grayColor];
    UITabBarItem *setItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore   tag:4];
    setCtrl.tabBarItem = setItem;
    [setItem release];
    
    UITabBarController *tabBarCtrl = [[UITabBarController alloc] init];
    NSArray *ctrls = @[homeCtrl,mesCtrl,searCtrl,setCtrl];
    [homeCtrl release];
    [mesCtrl release];
    [setCtrl release];
    [searCtrl release];
    [tabBarCtrl setViewControllers:ctrls animated:YES];
    
    tabBarCtrl.delegate = self;
    [self.window setRootViewController:tabBarCtrl];
    [tabBarCtrl release];
    return YES;
}

#pragma mark -UITabBarController Delegate
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
      NSLog(@"shouldSelectViewController  == %@",viewController);
    return YES;
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSLog(@"didSelectViewController    == %@",viewController);
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
