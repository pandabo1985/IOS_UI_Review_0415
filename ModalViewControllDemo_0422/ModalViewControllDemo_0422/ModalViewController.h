//
//  ModalViewController.h
//  ModalViewControllDemo_0422
//
//  Created by pan dabo on 14-4-22.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModalViewControllerDelegate <NSObject>

@optional
-(void)changeLabelText:(NSString*)text;

@end

@interface ModalViewController : UIViewController
{
    @private
    UITextField *_textField;
}

@property(nonatomic,assign)id<ModalViewControllerDelegate> delegate;
@end
