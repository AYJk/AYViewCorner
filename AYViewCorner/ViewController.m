//
//  ViewController.m
//  AYViewCorner
//
//  Created by Andy on 16/4/3.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ViewCorner.h"
@interface ViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *touXiangImage = [UIImage imageNamed:@"1352885363498"];
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(150, 30, 210, 200)];
//    self.imageView.center = self.view.center;
//    self.imageView.image = touXiangImage;
    [self.view addSubview:_imageView];
//    self.imageView.backgroundColor = [UIColor redColor];  
    [self.imageView ay_setCornerRadius:AYRadiusMake(50, 50, 50, 50) backgroundImage:touXiangImage backgroundColor:[UIColor redColor] setContentMode:UIViewContentModeScaleToFill];

//    self.imageView.image = touXiangImage;
//    self.imageView.backgroundColor = [UIColor redColor];
//    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    self.imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(150, 400, 210, 200)];
    self.imageView2.image = touXiangImage;
    self.imageView2.backgroundColor = [UIColor redColor];
    self.imageView2.layer.cornerRadius = 50;
    self.imageView2.layer.masksToBounds = YES;
//    UIViewContentModeScaleAspectFill 按imageView长宽大的那个进行等比拉伸，保持比例不变。
//    UIViewContentModeScaleAspectFit 按imageView长宽小的那个进行等比缩小，保持比例不变。
//    UIViewContentModeScaleToFill 满屏（imageView的size）
    self.imageView2.contentMode = UIViewContentModeCenter;
    [self.view addSubview:_imageView2];
    
    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 100, 200)];
    [colorView ay_setCornerRadius:AYRadiusMake(50, 50, 50, 50) backgroundImage:nil backgroundColor:[UIColor blueColor]];
    [self.view addSubview:colorView];
    
    UIView *colorView2 = [[UIView alloc] initWithFrame:CGRectMake(30, 400, 100, 200)];
    colorView2.backgroundColor = [UIColor redColor];
    colorView2.layer.cornerRadius = 50;
    [self.view addSubview:colorView2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
