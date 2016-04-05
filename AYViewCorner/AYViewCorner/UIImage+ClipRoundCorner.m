//
//  UIImage+ClipRoundCorner.m
//  AYViewCorner
//
//  Created by Andy on 16/4/4.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import "UIImage+ClipRoundCorner.h"

@implementation UIImage (ClipRoundCorner)

+ (UIImage *)ay_clipImageWithCornerRadius:(AYRadius)cornerRadius setImage:(UIImage *)image backgroundColor:(UIColor *)color withDrawRect:(CGRect)rect setContentMode:(UIViewContentMode)contentMode {
    
    if (image) {
        image = [image scaleImageWithContentMode:UIViewContentModeScaleToFill containerRect:rect];
        color = [UIColor colorWithPatternImage:image];
    }
    CGFloat imageWidth = rect.size.width;
    CGFloat imageHeight = rect.size.height;
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextMoveToPoint(context, 0, imageHeight * .5);
    CGContextAddArcToPoint(context, 0, 0, imageWidth * .5, 0, cornerRadius.topLeftCornerRadius);
    CGContextAddArcToPoint(context, imageWidth, 0, imageWidth , imageHeight * .5, cornerRadius.topRightCornerRadius);
    CGContextAddArcToPoint(context, imageWidth, imageHeight, imageWidth * .5, imageHeight, cornerRadius.bottomRightCornerRadius);
    CGContextAddArcToPoint(context, 0, imageHeight, 0, imageHeight * .5, cornerRadius.bottomLeftCornerRadius);
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFill);
    UIImage *outputImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return outputImage;
}

- (UIImage *)scaleImageWithContentMode:(UIViewContentMode)contentModel containerRect:(CGRect)rect {
    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor colorWithPatternImage:self].CGColor);
    CGContextAddRect(context, rect);
    CGContextDrawPath(context, kCGPathFill);
    [self drawInRect:[self drawImageWithContentMode:contentModel containerRect:rect]];
    UIImage *outputImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return outputImage;
}

- (CGRect)drawImageWithContentMode:(UIViewContentMode)contentMode containerRect:(CGRect)rect {
    
    CGSize imageSize = self.size;
    switch (contentMode) {
        case UIViewContentModeScaleAspectFill: {
            if (rect.size.width < rect.size.height) {
                imageSize.width = imageSize.width / (imageSize.height / rect.size.height);
                imageSize.height = rect.size.height;
            } else {
                imageSize.height = imageSize.height / (imageSize.width / rect.size.width);
                imageSize.width = rect.size.width;
            }
            return CGRectMake((rect.size.width - imageSize.width) * .5, (rect.size.height - imageSize.height) * .5, imageSize.width, imageSize.height);
        }
            break;
        case UIViewContentModeScaleAspectFit: {
            if (rect.size.width < rect.size.height) {
                imageSize.height = imageSize.height / (imageSize.width / rect.size.width);
                imageSize.width = rect.size.width;
                return CGRectMake(0, (rect.size.height - imageSize.height) * .5, imageSize.width, imageSize.height);
            } else {
                imageSize.width = imageSize.width / (imageSize.height / rect.size.height);
                imageSize.height = rect.size.height;
                return CGRectMake((rect.size.width - imageSize.width) * .5, 0, imageSize.width, imageSize.height);
            }
            
        }
            break;
        case UIViewContentModeScaleToFill: {
            
            return rect;
        }
        default:
            return rect;
            break;
    }
}

@end
