//
//  ModalViewController.m
//  ModalViewControllDemo_0422
//
//  Created by pan dabo on 14-4-22.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewDidAppear:(BOOL)animated;{
    [super viewDidAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}
- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(320/2 - 140/2, 100, 140, 40)];
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_textField];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(320/2-140/2, 180, 140, 40);
    button.backgroundColor =[UIColor whiteColor];
    [button setTitle:@"Dismiss" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(dismissModalVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)dismissModalVC{
    
//    if ([self respondsToSelector:@selector(dismissModalViewControllerAnimated:)]) {
//           [self dismissModalViewControllerAnimated:YES];
//    }
    
    if ([self.delegate respondsToSelector:@selector(changeLabelText:)]) {
            [self.delegate changeLabelText:_textField.text];
    }

    
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"bloc = dismissModalVC");
    }];
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
-(void)dealloc
{
    [super dealloc];
    [_textField release];
}
@end
