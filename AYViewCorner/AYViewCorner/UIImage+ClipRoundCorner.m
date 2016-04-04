//
//  UIImage+ClipRoundCorner.m
//  AYViewCorner
//
//  Created by Andy on 16/4/4.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import "UIImage+ClipRoundCorner.h"

@implementation UIImage (ClipRoundCorner)

- (UIImage *)ay_clipImageWithCornerRadius:(AYRadius)cornerRadius withDrawRect:(CGRect)rect setContentMode:(UIViewContentMode)contentMode {
    CGFloat imageWidth = rect.size.width;
    CGFloat imageHeight = rect.size.height;
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
//    UIGraphicsBeginImageContextWithOptions(CGRectMake(-100, -100, 300, 300).size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 0, imageHeight * .5);
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextAddArcToPoint(context, 0, 0, imageWidth * .5, 0, cornerRadius.topLeftCornerRadius);
    CGContextAddArcToPoint(context, imageWidth, 0, imageWidth , imageHeight * .5, cornerRadius.topRightCornerRadius);
    CGContextAddArcToPoint(context, imageWidth, imageHeight, imageWidth * .5, imageHeight, cornerRadius.bottomRightCornerRadius);
    CGContextAddArcToPoint(context, 0, imageHeight, 0, imageHeight * .5, cornerRadius.bottomLeftCornerRadius);
    CGContextClosePath(context);
    CGContextClip(context);
    CGContextDrawPath(context, kCGPathFillStroke);
    CGContextTranslateCTM(context, 0, rect.size.height);
    CGContextScaleCTM(context, 1, -1);
    CGRect drawRect = [self drawImageWithContentMode:contentMode containerRect:rect];
    CGContextDrawImage(context, drawRect, self.CGImage);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
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
