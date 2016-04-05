//
//  UIImage+ClipRoundCorner.h
//  AYViewCorner
//
//  Created by Andy on 16/4/4.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import <UIKit/UIKit.h>
struct AYRadius {
    CGFloat topLeftCornerRadius;
    CGFloat topRightCornerRadius;
    CGFloat bottomLeftCornerRadius;
    CGFloat bottomRightCornerRadius;
};
typedef struct AYRadius AYRadius;

static inline AYRadius AYRadiusMake(CGFloat topLeft ,CGFloat topRight, CGFloat bottomLeft, CGFloat bottomRight) {
    AYRadius ayRadius;
    ayRadius.topLeftCornerRadius = topLeft;
    ayRadius.topRightCornerRadius = topRight;
    ayRadius.bottomLeftCornerRadius = bottomLeft;
    ayRadius.bottomRightCornerRadius = bottomRight;
    return ayRadius;
}
@interface UIImage (ClipRoundCorner)

+ (UIImage *)ay_clipImageWithCornerRadius:(AYRadius)cornerRadius setImage:(UIImage *)image backgroundColor:(UIColor *)color withDrawRect:(CGRect)rect setContentMode:(UIViewContentMode)contentMode;

@end
