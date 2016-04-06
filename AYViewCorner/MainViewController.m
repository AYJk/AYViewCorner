//
//  MainViewController.m
//  AYViewCorner
//
//  Created by Andy on 16/4/5.
//  Copyright © 2016年 AYJkdev. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"
#import "CornerRadiusViewController.h"
@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *titles;
@end

static NSString *cellID = @"cellID";

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"AYViewCorner";
    self.titles = @[@"使用AYViewCorner",@"使用CornerRadius"];
    self.view.backgroundColor = [UIColor whiteColor];
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.tableFooterView = [UIView new];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.titles[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = @"back";
    self.navigationItem.backBarButtonItem = backItem;
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:[ViewController new] animated:YES];
    } else {
        [self.navigationController pushViewController:[CornerRadiusViewController new] animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
