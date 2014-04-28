//
//  AppDelegate.m
//  UITextField_Demo_0428
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
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(320/2 - 140/2, 40, 140, 40);
    button.backgroundColor = [UIColor purpleColor];
    [button addTarget:self action:@selector(testText) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button];
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(60, 180, 200, 35)];
    tf.delegate = self;
    tf.tag = 100;
    tf.placeholder = @"提示用户";
    tf.clearsOnBeginEditing = YES;
    tf.borderStyle = UITextBorderStyleRoundedRect;
    [self.window addSubview:tf];
    [tf release];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    view.backgroundColor = [UIColor yellowColor];
    tf.rightView = view;
    [view release];
    tf.rightViewMode = UITextFieldViewModeUnlessEditing;
    
    UIView *kye_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    kye_view.backgroundColor = [UIColor yellowColor];
    tf.inputAccessoryView = kye_view;
    [kye_view release];
    tf.returnKeyType = UIReturnKeyDone;
    [tf becomeFirstResponder];
    [self.window makeKeyAndVisible];
    return YES;
}
-(void)testText{
    UITextView *tf = (UITextView *)[self.window viewWithTag:100];
    [tf resignFirstResponder];
}

#pragma mark TextViewDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidBeginEditing");
}
- (void)textFieldDidEndEditing:(UITextView *)textView
{
     NSLog(@"textFieldDidEndEditing");
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
