//
//  AppDelegate.m
//  UISlider_Demo_0428
//
//  Created by pan dabo on 14-4-28.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(320/2-150/2, 100, 150, 25)];
    [slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
        [slider addTarget:self action:@selector(sliderOver:) forControlEvents:UIControlEventTouchUpInside];
    slider.tag = 100;
    slider.maximumValue = 100;
    slider.minimumValue = 0;
    slider.value = 50;
    [self.window addSubview:slider];
    [slider release];
    [self.window makeKeyAndVisible];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(test:) userInfo:slider repeats:NO];
    return YES;
}
-(void)test:(NSTimer *)timer
{
    UISlider *slider = [timer userInfo];
    [slider setValue:5 animated:YES];
}


-(void)sliderOver:(UISlider *)slider
{
    NSLog(@"sliderOver******slider.value = %f",slider.value);
}


-(void)sliderAction:(UISlider *)slider
{
    NSLog(@"slider.value = %f",slider.value);
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
