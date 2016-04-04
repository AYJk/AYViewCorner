//
//  UIView+ViewCorner.m
//  AYViewCorner
//
//  Created by Andy on 16/4/3.
//  Copyright © 2016年 . All rights reserved.
//

#import "UIView+ViewCorner.h"

@implementation UIView (ViewCorner)

- (UIImage *)ay_setTopLeftRadius:(CGFloat)topLeftRadius topRightRadius:(CGFloat)topRightRadius bottomRightRadius:(CGFloat)bottomRightRadius bottomLeftRadius:(CGFloat)bottomLeftRadius withImage:(UIImage *)image {
    
    CGFloat viewWidth = self.frame.size.width;
    CGFloat viewHeight = self.frame.size.height;
    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor yellowColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
//    起始点
    CGContextMoveToPoint(context, viewWidth * .5, 0);
    CGContextAddArcToPoint(context, viewWidth, 0, viewWidth, viewHeight * .5, topRightRadius);
    CGContextAddArcToPoint(context, viewWidth, viewHeight, viewWidth * .5, viewHeight, bottomRightRadius);
    CGContextAddArcToPoint(context, 0, viewHeight, 0, viewHeight * .5, bottomLeftRadius);
    CGContextAddArcToPoint(context, 0, 0, viewWidth * .5, 0, topLeftRadius);
    CGContextDrawPath(context, kCGPathFillStroke);
//    UIImage *image =  UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
