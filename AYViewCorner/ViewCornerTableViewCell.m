//
//  ViewCornerTableViewCell.m
//  AYViewCorner
//
//  Created by Andy on 16/4/5.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import "ViewCornerTableViewCell.h"
#import "AYViewCorner.h"
@implementation ViewCornerTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self configSubViews];
    }
    return self;
}

- (void)configSubViews {
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 35, 30)];
    imageView.image = [UIImage imageNamed:@"9680a02f0736d5cfebc9987797650ec1"];
    [imageView ay_setCornerRadius:AYRadiusMake(10, 10, 10, 10) backgroundImage:[UIImage imageNamed:@"9680a02f0736d5cfebc9987797650ec1"] backgroundColor:nil withContentMode:UIViewContentModeScaleToFill];
    [self.contentView addSubview:imageView];
    
    UIButton *testButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 5, 70, 30)];
    [testButton setBackgroundImage:[UIImage imageNamed:@"9680a02f0736d5cfebc9987797650ec1"] forState:UIControlStateNormal];
    [testButton setTitle:@"button" forState:UIControlStateNormal];
    [testButton ay_setCornerRadius:AYRadiusMake(10, 10, 10, 10) setNormalImage:[UIImage imageNamed:@"9680a02f0736d5cfebc9987797650ec1"] highlightedImage:nil disabledImage:nil selectedImage:nil backgroundColor:nil];
    [self.contentView addSubview:testButton];

    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(130, 5, 100, 30)];
    testLabel.text = @"LabelLabel";
    [testLabel ay_setCornerRadius:AYRadiusMake(10, 10, 10, 10) backgroundColor:[UIColor blueColor]];
    [self.contentView addSubview:testLabel];
    
    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(240 , 5, 100, 30)];
    [colorView ay_setCornerRadius:AYRadiusMake(10, 10, 10, 10) backgroundColor:[UIColor redColor]];
    [self.contentView addSubview:colorView];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
