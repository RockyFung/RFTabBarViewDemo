//
//  RFTabBarView.m
//  RFTabBarControllerDemo
//
//  Created by rocky on 2017/2/20.
//  Copyright © 2017年 RockyFung. All rights reserved.
//

#import "RFTabBarView.h"
#import "RFTabButton.h"


@interface RFTabBarView()
@property(nonatomic, strong) RFTabButton *button;
@property(nonatomic,strong) UIImageView *imgView;
@end

@implementation RFTabBarView

- (void)addImageView{
    UIImageView *imgView = [[UIImageView alloc]init];
    imgView.image = [UIImage imageNamed:@"TabBarBack"];
    self.imgView = imgView;
    [self addSubview:imgView];
}

- (void)addBarButtonWithImageName:(NSString *)imageName selImageName:(NSString *)selImageName title:(NSString *)title{
    RFTabButton *btn = [[RFTabButton alloc]init];
    
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selImageName] forState:UIControlStateDisabled];
    
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor colorWithRed:149/255.0 green:149/255.0 blue:149/255.0 alpha:1] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor colorWithRed:183/255.0 green:20/255.0 blue:28/255.0 alpha:1] forState:UIControlStateDisabled];
    
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:btn];
}

- (void)layoutSubviews
{
    UIImageView *imgView = self.subviews[0];
    imgView.frame = self.bounds;
    
    NSInteger count = self.subviews.count - 1; // 子控制器数量（去掉第一个imgview视图）
    for (int i = 0; i<count; i++) {
        
        UIButton *btn = self.subviews[i+1];
        //        CGFloat btnW = self.frame.size.width/self.subviews.count;
        //        CGFloat btnH = self.frame.size.height;
        CGFloat btnW = self.bounds.size.width/count;
        CGFloat btnH = self.bounds.size.height + 5;
        CGFloat btnX = i * btnW;
        CGFloat btnY = 0;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        //        btn.backgroundColor = [UIColor redColor];
        // 绑定tag 便于后面使用
        btn.tag = i;
        
        // 默认选中第一个按钮
        if (i == 0) {
            [self btnClick:btn];
        }
    }
}


- (void)btnClick:(UIButton *)btn
{
    
    // 响应代理方法 实现页面跳转
    if ([self.delegate respondsToSelector:@selector(ChangSelIndexForm:to:)]) {
        [self.delegate ChangSelIndexForm:_button.tag to:btn.tag];
    }
    
    // 设置按钮显示状态 并切换选中按钮
    _button.enabled = YES;
    _button = (RFTabButton *)btn;
    btn.enabled = NO;
}






















@end
