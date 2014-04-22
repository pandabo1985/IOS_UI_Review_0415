//
//  OtherUIView.m
//  UnLoadViewDemo_0421
//
//  Created by pan dabo on 14-4-21.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "OtherUIView.h"

@implementation OtherUIView

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

-(void)dealloc{
        NSLog(@"*++++++++++*OtherUIView*dealloc***");
    [super dealloc];

}
@end
