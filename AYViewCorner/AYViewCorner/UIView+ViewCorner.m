//
//  UIView+ViewCorner.m
//  AYViewCorner
//
//  Created by Andy on 16/4/3.
//  Copyright © 2016年 . All rights reserved.
//

#import "UIView+ViewCorner.h"

@implementation UIView (ViewCorner)

- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color setContentMode:(UIViewContentMode)contentMode {
    
    CGFloat viewWidth = self.frame.size.width;
    CGFloat viewHeight = self.frame.size.height;
    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor clearColor].CGColor);
    CGContextSetFillColorWithColor(context, color.CGColor);
    //    起始点
    CGContextMoveToPoint(context, 0, viewHeight * .5);
    CGContextAddArcToPoint(context, 0, 0, viewWidth * .5, 0, cornerRadius.topLeftCornerRadius);
    CGContextAddArcToPoint(context, viewWidth, 0, viewWidth , viewHeight * .5, cornerRadius.topRightCornerRadius);
    CGContextAddArcToPoint(context, viewWidth, viewHeight, viewWidth * .5, viewHeight, cornerRadius.bottomRightCornerRadius);
    CGContextAddArcToPoint(context, 0, viewHeight, 0, viewHeight * .5, cornerRadius.bottomLeftCornerRadius);
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
    UIImage *currentImage =  UIGraphicsGetImageFromCurrentImageContext();
    if ([self isMemberOfClass:[UIView class]]) {
        self.layer.contents = (__bridge id _Nullable)(currentImage.CGImage);
    } else if([self isMemberOfClass:[UIImageView class]]) {
        currentImage = [image ay_clipImageWithCornerRadius:cornerRadius withDrawRect:self.bounds setContentMode:contentMode];
        ((UIImageView *)self).image = currentImage;
    }
    UIGraphicsEndImageContext();

}

- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color {
    [self ay_setCornerRadius:cornerRadius backgroundImage:image backgroundColor:color setContentMode:UIViewContentModeScaleToFill];
}

@end
