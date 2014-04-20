//
//  AppDelegate.m
//  UIWindow_UIView_0417
//
//  Created by pan dabo on 14-4-17.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "AppDelegate.h"
#import "SubView.h"

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
    
    UIView *view_01 = [[UIView alloc] initWithFrame:CGRectMake(60, 250, 200, 100)];
    view_01.alpha = 1;
    view_01.backgroundColor = [UIColor redColor];
    [self.window addSubview:view_01];
    [view_01 release];
    [view_01 setTag:101];
    NSLog(@"view_01 superview = %@",[view_01 superview]);
    
    UIView *view_02 = [[UIView alloc] initWithFrame:CGRectMake(60, 300, 200, 100)];
    view_02.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:view_02];
    [view_02 release];
    NSLog(@"view_02 superview = %@",[view_02 superview]);
    
    UIButton *btnChange = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnChange setBackgroundColor:[UIColor grayColor]];
    btnChange.frame = CGRectMake(320/2-120/2, 500, 120, 35);
    [btnChange setTitle:@"change view" forState:UIControlStateNormal];
    
    [btnChange addTarget:self action:@selector(changeView) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btnChange ];
    NSLog(@"*****btnChange retainCount= %ld",[btnChange retainCount]);
//    [btnChange release];// why not release?
    
    SubView *view_03 = [[SubView alloc] initWithFrame:CGRectMake(60, 350, 200, 100)];
    view_03.backgroundColor = [UIColor greenColor];
    view_03.tag = 102;
    [self.window addSubview:view_03];
    [view_03 release];
    NSLog(@"view_02 superview = %@",[view_02 superview]);

    
    
    //    NSArray *subViews = [self.window subviews];
    //    NSLog(@"*******subviews = %@",subViews);
    
    return YES;
}

-(void)changeView{
    SubView *subView = (SubView *)[self.window viewWithTag:102];
     [subView test];
    [subView removeFromSuperview];
   
    
}

-(void)alerUser{
    //两次后崩溃，why????
//    UIView *view_01 = nil;
//    NSLog(@"view_01  retainCount== %ld",[view_01 retainCount]);
//    NSArray *subViews = [self.window subviews];
//    NSLog(@"subViews = %ld",[subViews count]);
//    for (int i = 0;i<[subViews count]; i++) {
//        UIView *view = [subViews objectAtIndex:i];
//        NSLog(@"view_01  retainCount== %ld",[view_01 retainCount]);
//        if (view.tag ==101) {
//            NSLog(@"view_01  retainCount== %ld",[view_01 retainCount]);
//            view_01 = view;
//            [view release];
//        }
//    }
    UIView *view_01 = [self.window viewWithTag:101];
    NSLog(@"view_01  retainCount== %ld",[view_01 retainCount]);
    [self.window bringSubviewToFront:view_01];
    NSLog(@"view_01  retainCount== %ld",[view_01 retainCount]);
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
