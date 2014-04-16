//
//  AppDelegate.m
//  HelloWorld_0415
//
//  Created by pan dabo on 14-4-15.
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
    
    //view create
//    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil];
//    NSLog(@"views = %@",views);
//    [self.window addSubview:[views lastObject]];
    
    //code create
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(30, 30, 300, 100);
    label.textAlignment = NSTextAlignmentCenter;
    [label setBackgroundColor:[UIColor grayColor ]];
    [label setTextColor:[UIColor redColor]];
    [label setText:@"hello world"];
    NSLog(@"lable = %@",label);
    [self.window addSubview:label];
    [label release];
    NSLog(@"didFinishLaunchingWithOptions");
    return YES;
}

-(void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"applicationWillResignActive");
}

-(void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"applicationDidEnterBackground");
}


-(void)applicationWillEnterForeground:(UIApplication *)application{
    NSLog(@"applicationWillEnterForeground");
}

-(void)applicationDidBecomeActive:(UIApplication *)application{
    NSLog(@"applicationDidBecomeActive");
}

-(void)applicationWillTerminate:(UIApplication *)application{
    NSLog(@"applicationWillTerminate");
}
-(void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
