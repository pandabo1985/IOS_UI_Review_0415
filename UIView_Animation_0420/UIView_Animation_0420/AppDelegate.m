//
//  AppDelegate.m
//  UIView_Animation_0420
//
//  Created by pan dabo on 14-4-20.
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
    UIButton *animationBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    animationBtn.frame = CGRectMake(320/2 - 200/2, 50, 200, 50);
    [animationBtn setBackgroundColor:[UIColor grayColor]];
    [animationBtn setTitle:@"animation change" forState:UIControlStateNormal];
    [animationBtn addTarget:self action:@selector(animationChange) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:animationBtn];
    UIView *aniView = [[UIView alloc] initWithFrame:CGRectMake(320/2 - 200/2, 100, 200, 50)];
    aniView.tag = 101;
    aniView.backgroundColor = [UIColor blueColor];
    [self.window addSubview:aniView];
    [aniView release];
    CGRect rect = [[self.window viewWithTag:101] frame];
    UIImageView *teaImageView = [[UIImageView alloc] initWithFrame:CGRectMake(rect.origin.x, rect.origin.y+rect.size.height+10, 100, 300)];
//    teaImageView.contentMode = UIViewContentModeScaleToFill;
    
    teaImageView.clipsToBounds =YES;//超出范围剪切掉
     teaImageView.contentMode = UIViewContentModeCenter;
    teaImageView.backgroundColor =[UIColor redColor];
    teaImageView.image = [UIImage imageNamed:@"tea"];
    [self.window addSubview:teaImageView];
    return YES;
}

-(void)animationChange{
    UIView *aniView = [self.window viewWithTag:101];
    aniView.transform = CGAffineTransformScale(aniView.transform, 0.8, 0.8);
    aniView.transform = CGAffineTransformRotate(aniView.transform, 20);
    aniView.transform = CGAffineTransformTranslate(aniView.transform, 100, 0);
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
