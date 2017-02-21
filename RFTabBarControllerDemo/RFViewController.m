//
//  RFViewController.m
//  RFTabBarControllerDemo
//
//  Created by rocky on 2017/2/20.
//  Copyright © 2017年 RockyFung. All rights reserved.
//

#import "RFViewController.h"

@interface RFViewController ()
@property (nonatomic, strong) UIButton *btn;
@end

@implementation RFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 100, 30)];
    [self.btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.btn setTitle:@"跳转" forState:UIControlStateNormal];
    self.btn.backgroundColor = [UIColor cyanColor];
    [self.btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
}

// 点击跳转
- (void)btnAction:(UIButton *)btn{
    UIViewController *vc = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor yellowColor];
    vc.navigationItem.title = @"详情页";
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
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
