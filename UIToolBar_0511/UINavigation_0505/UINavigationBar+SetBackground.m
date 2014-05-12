//
//  UINavigationBar+SetBackground.m
//  UIToolBar_0511
//
//  Created by pan dabo on 14-5-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "UINavigationBar+SetBackground.h"

@implementation UINavigationBar (SetBackground)

-(void)drawRect:(CGRect)rect
{
    UIImage *image = [UIImage imageNamed:@"back.jpg"];
    [image drawInRect:rect];
}

@end
