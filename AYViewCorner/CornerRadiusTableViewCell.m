//
//  CornerRadiusTableViewCell.m
//  AYViewCorner
//
//  Created by Andy on 16/4/5.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import "CornerRadiusTableViewCell.h"

@implementation CornerRadiusTableViewCell

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
    imageView.layer.cornerRadius = 10;
    imageView.layer.masksToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:imageView];
    
    UIButton *testButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 5, 70, 30)];
    [testButton setBackgroundImage:[UIImage imageNamed:@"9680a02f0736d5cfebc9987797650ec1"] forState:UIControlStateNormal];
    [testButton setTitle:@"button" forState:UIControlStateNormal];
    testButton.layer.cornerRadius = 10;
    testButton.layer.masksToBounds = YES;
    [self.contentView addSubview:testButton];
    
    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(130, 5, 100, 30)];
    testLabel.text = @"LabelLabel";
    testLabel.layer.cornerRadius = 10;
    testLabel.layer.borderWidth = 0.5;
    testLabel.layer.masksToBounds = YES;
    testLabel.backgroundColor = [UIColor blueColor];
    [self.contentView addSubview:testLabel];
    
    UIView *colorView2 = [[UIView alloc] initWithFrame:CGRectMake(240 , 5, 100, 30)];
    colorView2.backgroundColor = [UIColor redColor];
    colorView2.contentMode = UIViewContentModeScaleAspectFit;
    colorView2.layer.cornerRadius = 10;
    colorView2.layer.masksToBounds = YES;
    [self.contentView addSubview:colorView2];

}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
