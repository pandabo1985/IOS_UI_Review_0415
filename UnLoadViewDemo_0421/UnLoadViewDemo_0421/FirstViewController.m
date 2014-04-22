//
//  FirstViewController.m
//  UnLoadViewDemo_0421
//
//  Created by pan dabo on 14-4-21.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       self.title = @"first";
    }
    return self;
}

-(void)loadView
{
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    baseView.backgroundColor = [UIColor redColor];
    self.view = baseView;
    [baseView release];
    
    _subView_01 = [[UIView alloc] initWithFrame:CGRectMake(60, 100, 200, 200)];
    _subView_01.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_subView_01];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    NSLog(@"****firt***didReceiveMemoryWarning********");
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
      NSLog(@"first****self.view.window = %@",self.view.window);
}
-(void)viewWillUnload{
    [super viewWillUnload];
    NSLog(@"****firt***viewWillUnload********");
}
-(void)viewDidUnload{
    [super viewDidUnload];
        NSLog(@"***firt****viewDidUnload********");
}
- (void)dealloc
{
    self.subView_01 = nil;
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
