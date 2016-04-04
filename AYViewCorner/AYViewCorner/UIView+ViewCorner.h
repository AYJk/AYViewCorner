//
//  UIView+ViewCorner.h
//  AYViewCorner
//
//  Created by Andy on 16/4/3.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ViewCorner)
- (UIImage *)ay_setTopLeftRadius:(CGFloat)topLeftRadius topRightRadius:(CGFloat)topRightRadius bottomRightRadius:(CGFloat)bottomRightRadius bottomLeftRadius:(CGFloat)bottomLeftRadius withImage:(UIImage *)image;
@end
