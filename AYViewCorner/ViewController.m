//
//  ViewController.m
//  AYViewCorner
//
//  Created by Andy on 16/4/3.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import "ViewController.h"
#import "AYViewCorner.h"
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
    [self.imageView ay_setCornerRadius:AYRadiusMake(50, 50, 50, 50) backgroundImage:[UIImage imageNamed:@"1352885363498"] backgroundColor:[UIColor blueColor] withContentMode:UIViewContentModeScaleToFill];

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
    self.imageView2.contentMode = UIViewContentModeScaleToFill;
    [self.view addSubview:_imageView2];
    
    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 100, 200)];
    [colorView ay_setCornerRadius:AYRadiusMake(50, 50, 50, 50) backgroundColor:[UIColor blueColor]];
    [self.view addSubview:colorView];
    
    UIView *colorView2 = [[UIView alloc] initWithFrame:CGRectMake(30, 400, 100, 200)];
    colorView2.backgroundColor = [UIColor redColor];
    colorView2.layer.cornerRadius = 50;
    [self.view addSubview:colorView2];
    

    UIButton *testButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 300, 100, 40)];
    [testButton setBackgroundImage:touXiangImage forState:UIControlStateNormal];
    [testButton setTitle:@"button" forState:UIControlStateNormal];
    testButton.layer.cornerRadius = 20;
    testButton.layer.masksToBounds = YES;
    [self.view addSubview:testButton];
    
    UIButton *ayCornerButton = [[UIButton alloc] initWithFrame:CGRectMake(120, 300, 100, 40)];
//    ayCornerButton.backgroundColor = [UIColor greenColor];
    [ayCornerButton ay_setCornerRadius:AYRadiusMake(20, 20, 20, 20) setNormalImage:[UIImage imageNamed:@"1352885363498"] highlightedImage:[UIImage imageNamed:@"180"] disabledImage:[UIImage imageNamed:@"2"] selectedImage:[UIImage imageNamed:@"ico.ooopic"] backgroundColor:[UIColor yellowColor]];
    [ayCornerButton setTitle:@"button" forState:UIControlStateNormal];
    [self.view addSubview:ayCornerButton];
    
    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(240, 280, 120, 30)];
    testLabel.text = @"LabelLabel";
    testLabel.layer.cornerRadius = 15;
    testLabel.layer.masksToBounds = YES;
    testLabel.backgroundColor = [UIColor blueColor];
    [self.view addSubview:testLabel];
    
    UILabel *testLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(240, 330, 120, 30)];
    testLabel2.text = @"呼和督导";
    [testLabel2 ay_setCornerRadius:AYRadiusMake(15, 15, 15, 15) backgroundColor:[UIColor redColor]];
//    testLabel2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:testLabel2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
