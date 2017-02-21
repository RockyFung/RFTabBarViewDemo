//
//  MainTabBarController.m
//  RFTabBarControllerDemo
//
//  Created by rocky on 2017/2/20.
//  Copyright © 2017年 RockyFung. All rights reserved.
//

#import "MainTabBarController.h"
#import "RFTabBarView.h"
#import "RFNavigationController.h"
#import "RFViewController.h"
@interface MainTabBarController ()<RFTabBarViewDelegate>

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
    // 添加控制器
    [self addViewControllers];
    
    // 添加自定义tabBar
    [self addTabBarView];
    
}
- (void)addTabBarView{
    RFTabBarView *tabBar = [[RFTabBarView alloc]init];
    tabBar.frame = self.tabBar.bounds;
    tabBar.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:239/255.0 alpha:1];
    tabBar.delegate = self;
    [tabBar addImageView];
    
    // 添加按钮
    [tabBar addBarButtonWithImageName:@"tabbar_icon_news_normal" selImageName:@"tabbar_icon_news_highlight" title:@"新闻"];
    [tabBar addBarButtonWithImageName:@"tabbar_icon_reader_normal" selImageName:@"tabbar_icon_reader_highlight" title:@"阅读"];
    [tabBar addBarButtonWithImageName:@"tabbar_icon_media_normal" selImageName:@"tabbar_icon_media_highlight" title:@"视听"];
    [tabBar addBarButtonWithImageName:@"tabbar_icon_found_normal" selImageName:@"tabbar_icon_found_highlight" title:@"发现"];
    [tabBar addBarButtonWithImageName:@"tabbar_icon_me_normal" selImageName:@"tabbar_icon_me_highlight" title:@"我"];
    self.selectedIndex = 0; // 如果不设置，原始tabBar会覆盖在上面
    [self.tabBar addSubview:tabBar]; // 要放到最后

}

- (void)addViewControllers{
    for (int i = 0 ; i < 5; i++) {
        RFViewController *vc = [[RFViewController alloc]init];
        vc.navigationItem.title = [NSString stringWithFormat:@"%d",i];
        RFNavigationController *nav = [[RFNavigationController alloc]initWithRootViewController:vc];
        [self addChildViewController:nav];
    }
    
}

// 代理方法
- (void)ChangSelIndexForm:(NSInteger)from to:(NSInteger)to{
    self.selectedIndex = to;
    NSLog(@"第%ld个",to);
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
