//
//  UIView+ViewCorner.h
//  AYViewCorner
//
//  Created by Andy on 16/4/3.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+ClipRoundCorner.h"

@interface UIView (ViewCorner)
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color;

- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color setContentMode:(UIViewContentMode)contentMode;
@end
