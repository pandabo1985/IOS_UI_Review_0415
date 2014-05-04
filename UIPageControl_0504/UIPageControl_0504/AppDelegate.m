//
//  AppDelegate.m
//  UIPageControl_0504
//
//  Created by pan dabo on 14-5-4.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    UIPageControl *pageCtrl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 180, 320, 40)];
    pageCtrl.numberOfPages = 10;
    pageCtrl.currentPage = 2;
//    pageCtrl.hidesForSinglePage = YES;
//    pageCtrl.enabled = NO;
    [pageCtrl addTarget:self action:@selector(chage:) forControlEvents:UIControlEventValueChanged];
    pageCtrl.backgroundColor = [UIColor grayColor];
    [self.window addSubview:pageCtrl];
  
    [self.window makeKeyAndVisible];
    
    
    UIActivityIndicatorView *activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    activityView.center = CGPointMake(150, 200);
    [activityView startAnimating];
    [self.window addSubview:activityView];
    
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(stopAcitvity:) userInfo:activityView repeats:NO];
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    return YES;
}

-(void)stopAcitvity:(NSTimer *)timer
{
     [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    UIActivityIndicatorView *activityView = [timer userInfo];
    [activityView stopAnimating];
}
     
-(void)chage:(UIPageControl *)pageCtrl
{
    NSLog(@"currentPage = %d",pageCtrl.currentPage);
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
