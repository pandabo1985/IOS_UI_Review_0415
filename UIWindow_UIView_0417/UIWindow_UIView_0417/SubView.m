//
//  SubView.m
//  UIWindow_UIView_0417
//
//  Created by pan dabo on 14-4-20.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "SubView.h"

@implementation SubView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _otherView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        [_otherView setBackgroundColor:[UIColor blackColor]];
        [self addSubview:_otherView];
//    [_otherView release];//maybe used other places.should be rlease end;
    }
    return self;
}


-(void)test
{
    NSLog(@"test subview");
}
//- (id)initWithName:(NSString *)name
//{
//    self = [super init];
//    if (self) {
//        
//    }
//    return self;
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)dealloc
{
//    [self.otherView release];//why is not safe?
    self.otherView = nil;
    NSLog(@"*****dealloc******tag = %ld",self.tag);
    [super dealloc];
}

@end
