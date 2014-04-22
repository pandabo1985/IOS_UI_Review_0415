//
//  MainViewController.m
//  UIViewController_0420
//
//  Created by pan dabo on 14-4-21.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)init
{
    self = [super init];//调用父类
    if (self) {
       
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void)loadView{
    //覆盖loadView两种方式
  //第一种方式,调用父类的loadView,
//    [super loadView];
    //第二种方式，
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    view.backgroundColor = [UIColor yellowColor];
    self.view = view;
    [view release];
    NSLog(@"******loadView******");
    //add subview
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(60, 20, 200, 200)];
    subView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:subView];
    
    [subView release];
}
- (void)viewDidLoad
{
    NSLog(@"******viewDidLoad******self.view = %@",self.view);
    [super viewDidLoad];
    //访问网络
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


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"*********viewWillAppear************");
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"*********viewDidAppear************");
}
@end
