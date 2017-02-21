//
//  RFNavigationController.m
//  RFTabBarControllerDemo
//
//  Created by rocky on 2017/2/20.
//  Copyright © 2017年 RockyFung. All rights reserved.
//

#import "RFNavigationController.h"
#import "RFViewController.h"
@interface RFNavigationController ()

@end

@implementation RFNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];

    

    
    
}

/**这个方法在类第一次调用时被调用, 此方法只会被调用一次. 避免浪费内存*/
+ (void)initialize {
    //修改nav条的样式. (用自己的图片)
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    //根据iOS版本设置navBar的大小. iOS6是44(不包括状态栏), iOS7是64, 包括状态栏.
    UIImage *image = nil;
    [navBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    
    //修改navBar字体大小文字颜色
    NSDictionary *attris = @{ NSFontAttributeName:[UIFont systemFontOfSize:21],
                              NSForegroundColorAttributeName:[UIColor redColor] };
    [navBar setTitleTextAttributes:attris];
}




- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    [super pushViewController:viewController animated:animated];
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
