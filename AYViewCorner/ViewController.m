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
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.imageView.center = self.view.center;
    self.imageView.image = touXiangImage;
    [self.view addSubview:_imageView];
    
    [self.imageView ay_setTopLeftRadius:10 topRightRadius:10 bottomRightRadius:10 bottomLeftRadius:10 withImage:[UIImage imageNamed:@"1352885363498"]];
    self.imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 500, 100, 100)];
//    self.imageView2.image = image;
//    self.imageView2.center = self.view.center;
    [self.view addSubview:_imageView2];
    
    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 50, 50)];
    colorView.backgroundColor = [UIColor blackColor];
    [colorView ay_setTopLeftRadius:20 topRightRadius:20 bottomRightRadius:20 bottomLeftRadius:20 withImage:nil];
    [self.view addSubview:colorView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
