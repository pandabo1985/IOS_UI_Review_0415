//
//  RootViewController.m
//  UINavigation_0505
//
//  Created by pan dabo on 14-5-5.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

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

 -(void)loadView
{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen]applicationFrame]];
    baseView.backgroundColor = [UIColor purpleColor];
    self.view = baseView;
    [baseView release];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(90, 100, 140, 35)];
    [button addTarget:self action:@selector(pushCtrl) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(study)];
//    self.navigationController.navigationItem.leftBarButtonItem = leftItem;//错误的写法。一个导航控制器，控制着若干个试图控制器。
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftItem release];
    
    UIButton *item = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [item setTitle:@"test" forState:UIControlStateNormal];
    [item setFrame:CGRectMake(0, 0, 40, 35)];
    [item addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:item];
    self.navigationItem.rightBarButtonItem = rightItem;
    [rightItem release];
    
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setToolbarHidden:YES animated:YES];
}

#pragma mark -Target action
-(void)pushCtrl
{
    SecondViewController *secCtrl = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secCtrl animated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

-(void)study
{
    UIAlertView *alertView = [[[UIAlertView alloc] initWithTitle:@"study" message:@"恭喜" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil] autorelease];
    [alertView show];
}
-(void)test
{
    UIActionSheet *actionSheet = [[[UIActionSheet alloc] initWithTitle:@"test" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"确定", nil] autorelease];
    [actionSheet showInView:self.view];
}

@end
