//
//  ViewController.m
//  AYViewCorner
//
//  Created by Andy on 16/4/3.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import "ViewController.h"

#import "ViewCornerTableViewCell.h"
#import "CornerRadiusViewController.h"
@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView2;
@property (nonatomic, strong) UITableView *viewCornertableView;
@end
static NSString *viewCornerID = @"viewCornerID";
@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.viewCornertableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.viewCornertableView registerClass:[ViewCornerTableViewCell class] forCellReuseIdentifier:viewCornerID];
    self.viewCornertableView.delegate = self;
    self.viewCornertableView.dataSource = self;
    [self.view addSubview:self.viewCornertableView];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 500;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ViewCornerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:viewCornerID forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[ViewCornerTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:viewCornerID];
    }
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
