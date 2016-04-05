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
/**
 *  UIButton添加圆角并设置背景图片
 *  
 *  @param cornerRadius     设置四个圆角
 *  @param normalImage      正常情况下的背景图
 *  @param highlightedImage 高亮的背景图
 *  @param disableImage     禁用的背景图
 *  @param color            背景颜色
 *  @param contentMode      显示模式
 */
- (void)ay_setCornerRadius:(AYRadius)cornerRadius setNormalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage disabledImage:(UIImage *)disableImage selectedImage:(UIImage *)selectedImage backgroundColor:(UIColor *)color;
/**
 *  UIView及其子类添加圆角并设置背景颜色（推荐于UILabel,UIView）
 *
 *  @param cornerRadius 设置四个圆角
 *  @param color        背景颜色
 */
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundColor:(UIColor *)color;
/**
 *  UIView及其子类添加圆角并设置图片或背景色，有图片的时候不会显示背景色。（推荐于UIImageView）
 *
 *  @param cornerRadius 设置四个圆角
 *  @param image        背景图片
 *  @param color        背景颜色
 */
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color;
/**
 *  UIView及其子类添加圆角并设置图片或背景色，有图片的时候不会显示背景色。（推荐于UIImageView）
 *
 *  @param cornerRadius 设置四个圆角
 *  @param image        背景图片
 *  @param color        背景颜色
 *  @param contentMode  显示模式
 */
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color withContentMode:(UIViewContentMode)contentMode;
@end
