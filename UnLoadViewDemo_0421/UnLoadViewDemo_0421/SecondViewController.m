//
//  SecondViewController.m
//  UnLoadViewDemo_0421
//
//  Created by pan dabo on 14-4-21.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "SecondViewController.h"
#import "OtherUIView.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
     self.title = @"second";
    }
    return self;
}

-(void)loadView
{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor yellowColor];
    self.view = baseView;
    [baseView release];
    _subView_02 = [[UIView alloc] initWithFrame:CGRectMake(60, 100, 200, 200)];
    _subView_02.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_subView_02];
    
    OtherUIView *otherView = [[OtherUIView alloc] initWithFrame:CGRectMake(60, 300, 100, 100)];
    otherView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:otherView];
    [otherView release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    NSLog(@"****second***didReceiveMemoryWarning*****11111111***");
    [super didReceiveMemoryWarning];
    NSLog(@"****second***didReceiveMemoryWarning***22222222*****");
    // Dispose of any resources that can be recreated.
//    NSLog(@"second****self.view.window = %@",self.view.window);
    if ([self.view window] == nil) {
        self.subView_02 = nil;
        self.view = nil;
    }
}
-(void)viewWillUnload{
    [super viewWillUnload];
    NSLog(@"****second***viewWillUnload********");
}
-(void)viewDidUnload{
    [super viewDidUnload];
    self.subView_02 = nil;
    NSLog(@"*****second**viewDidUnload********");
}
- (void)dealloc
{
    self.subView_02 = nil;
    [super dealloc];
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

@end
