//
//  AlertView.m
//  UIAlertView_0504
//
//  Created by pan dabo on 14-5-4.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "AlertView.h"

@implementation AlertView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc
{
    NSLog(@"tag = %d",self.tag);
    [super dealloc];
}
@end
