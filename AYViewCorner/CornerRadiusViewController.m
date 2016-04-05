//
//  CornerRadiusViewController.m
//  AYViewCorner
//
//  Created by Andy on 16/4/5.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import "CornerRadiusViewController.h"
#import "CornerRadiusTableViewCell.h"

@interface CornerRadiusViewController () <UITableViewDataSource, UITableViewDelegate>



@end
static NSString *cornerRadiusCellID = @"cornerRadiusCellID";
@implementation CornerRadiusViewController

- (void)viewDidLoad {
    
    self.title = @"设置CornerRadius的情况";
    UITableView *cornerRadiusTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [cornerRadiusTableView registerClass:[CornerRadiusTableViewCell class] forCellReuseIdentifier:cornerRadiusCellID];
    cornerRadiusTableView.delegate = self;
    cornerRadiusTableView.dataSource = self;
    [self.view addSubview:cornerRadiusTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 500;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CornerRadiusTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cornerRadiusCellID forIndexPath:indexPath];
    
    return cell;
}

@end
