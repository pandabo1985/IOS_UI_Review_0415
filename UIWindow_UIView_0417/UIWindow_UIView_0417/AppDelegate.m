//
//  AppDelegate.m
//  UIWindow_UIView_0417
//
//  Created by pan dabo on 14-4-17.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    NSLog(@"******self.window = %p",self.window);
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    NSLog(@"*******keyWindow = %p",keyWindow);
    
    self.window.windowLevel = UIWindowLevelStatusBar;
    NSLog(@"========levle: %.2f===",self.window.windowLevel);
    NSLog(@"self.window frame : %@",NSStringFromCGRect(self.window.frame));
    
//    NSLog(@"========levle: %.2f===",UIWindowLevelNormal);
//    NSLog(@"========levle: %.2f===",UIWindowLevelStatusBar);
//    NSLog(@"========levle: %.2f===",UIWindowLevelAlert);
    
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [startButton setBackgroundColor:[UIColor grayColor]] ;
    startButton.frame = CGRectMake(320/2-120/2, 180, 120, 35);
    [startButton setTitle:@"警告" forState:UIControlStateNormal ];
    [startButton addTarget:self action:@selector(alerUser) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:startButton];
    
    UIView *view_01 = [[UIView alloc] initWithFrame:CGRectMake(60, 100, 200, 100)];
    view_01.backgroundColor = [UIColor redColor];
    [self.window addSubview:view_01];
    [view_01 release];
    
    NSArray *subViews = [self.window subviews];
    NSLog(@"*******subviews = %@",subViews);
    
    return YES;
}


-(void)alerUser{
    UIAlertView *alertView = [[[UIAlertView alloc] initWithTitle:@"温馨提示" message:@"这Alert Level级别" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil] autorelease];
    [alertView show];
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
