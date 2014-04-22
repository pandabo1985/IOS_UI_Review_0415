//
//  RootViewController.m
//  ModalViewControllDemo_0422
//
//  Created by pan dabo on 14-4-22.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "RootViewController.h"
#import "ModalViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(320/2-140/2, 80, 140, 40);
    button.backgroundColor =[UIColor whiteColor];
    [button setTitle:@"Present" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(presentModalVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceChange:) name:UIDeviceOrientationDidChangeNotification object:nil];
    
}

-(void)deviceChange:(NSNotification *)notification{
    NSLog(@"notification userInfo== %@",[notification userInfo]);
    NSLog(@"notification object== %@",[notification object]);
    UIDevice *device = (UIDevice *)[notification object];
    NSLog(@"device = %d",device.orientation);
}
-(void)presentModalVC{
    ModalViewController *modalViewCtl = [[ModalViewController alloc] init];
    modalViewCtl.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    UIDevice *device = [UIDevice currentDevice];
    if ([device.systemVersion floatValue]>6.0) {
        NSLog(@"*****>6.0*******");
    }else{
        NSLog(@"*******<6.0*********");
    }
    if ([self respondsToSelector:@selector(presentModalViewController:animated:)]) {
        [self presentModalViewController:modalViewCtl animated:YES];
    }else{
        [self presentViewController:modalViewCtl animated:NO completion:^{
            NSLog(@"+++++++block call back!");
        }];
    }
    [modalViewCtl release];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return NO;
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"duration = %f",duration);
}

- (BOOL)shouldAutorotate{
    NSLog(@"***shouldAutorotate*****");
    return YES;
}
- (NSUInteger)supportedInterfaceOrientations{
//    return (UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskAllButUpsideDown|UIInterfaceOrientationMaskLandscapeLeft |
//            UIInterfaceOrientationMaskLandscapeRight);
    return UIInterfaceOrientationMaskAll;
}

@end
