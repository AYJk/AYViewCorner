//
//  UIView+ViewCorner.m
//  AYViewCorner
//
//  Created by Andy on 16/4/3.
//  Copyright © 2016年 . All rights reserved.
//

#import "UIView+ViewCorner.h"

@implementation UIView (ViewCorner)

- (void)ay_setCornerRadius:(AYRadius)cornerRadius setNormalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage disabledImage:(UIImage *)disableImage selectedImage:(UIImage *)selectedImage backgroundColor:(UIColor *)color {
    
    if ([self isMemberOfClass:[UIButton class]]) {
        CGFloat viewWidth = self.frame.size.width;
        CGFloat viewHeight = self.frame.size.height;
        UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, [UIScreen mainScreen].scale);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetStrokeColorWithColor(context, color.CGColor);
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
        if (normalImage) {
            currentImage = [UIImage ay_clipImageWithCornerRadius:cornerRadius setImage:normalImage backgroundColor:color withDrawRect:self.bounds setContentMode:UIViewContentModeScaleToFill];
            [((UIButton *)self) setBackgroundImage:currentImage forState:UIControlStateNormal];
        }
        if (highlightedImage) {
            currentImage = [UIImage ay_clipImageWithCornerRadius:cornerRadius setImage:highlightedImage backgroundColor:color withDrawRect:self.bounds setContentMode:UIViewContentModeScaleToFill];
            [((UIButton *)self) setBackgroundImage:currentImage forState:UIControlStateHighlighted];
        }
        if (disableImage) {
            currentImage = [UIImage ay_clipImageWithCornerRadius:cornerRadius setImage:disableImage backgroundColor:color withDrawRect:self.bounds setContentMode:UIViewContentModeScaleToFill];
            [((UIButton *)self) setBackgroundImage:currentImage forState:UIControlStateDisabled];
        }
        if (selectedImage) {
            currentImage = [UIImage ay_clipImageWithCornerRadius:cornerRadius setImage:selectedImage backgroundColor:color withDrawRect:self.bounds setContentMode:UIViewContentModeScaleToFill];
            [((UIButton *)self) setBackgroundImage:currentImage forState:UIControlStateSelected];
        }
    }
}

- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color {

    [self ay_setCornerRadius:cornerRadius backgroundImage:image backgroundColor:color withContentMode:UIViewContentModeScaleToFill];
}

- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundColor:(UIColor *)color {
    
    [self ay_setCornerRadius:cornerRadius backgroundImage:nil backgroundColor:color withContentMode:UIViewContentModeScaleToFill];
}

- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color withContentMode:(UIViewContentMode)contentMode {
    
    CGFloat viewWidth = self.frame.size.width;
    CGFloat viewHeight = self.frame.size.height;
    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
//    起始点
    CGContextMoveToPoint(context, 0, viewHeight * .5);
    CGContextAddArcToPoint(context, 0, 0, viewWidth * .5, 0, cornerRadius.topLeftCornerRadius);
    CGContextAddArcToPoint(context, viewWidth, 0, viewWidth , viewHeight * .5, cornerRadius.topRightCornerRadius);
    CGContextAddArcToPoint(context, viewWidth, viewHeight, viewWidth * .5, viewHeight, cornerRadius.bottomRightCornerRadius);
    CGContextAddArcToPoint(context, 0, viewHeight, 0, viewHeight * .5, cornerRadius.bottomLeftCornerRadius);
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFill);
    UIImage *currentImage =  UIGraphicsGetImageFromCurrentImageContext();
    if ([self isMemberOfClass:[UIView class]]) {
        self.layer.contents = (__bridge id _Nullable)(currentImage.CGImage);
    } else if([self isMemberOfClass:[UIImageView class]]) {
        currentImage = [UIImage ay_clipImageWithCornerRadius:cornerRadius setImage:image backgroundColor:color withDrawRect:self.bounds setContentMode:contentMode];
        ((UIImageView *)self).image = currentImage;
    } else if ([self isMemberOfClass:[UIButton class]]) {
        currentImage = [UIImage ay_clipImageWithCornerRadius:cornerRadius setImage:image backgroundColor:color withDrawRect:self.bounds setContentMode:contentMode];
        [((UIButton *)self) setBackgroundImage:currentImage forState:UIControlStateNormal];
    } else if([self isMemberOfClass:[UILabel class]]) {
        ((UILabel *)self).layer.backgroundColor = [UIColor colorWithPatternImage:currentImage].CGColor;
    }
    UIGraphicsEndImageContext();
}

@end
