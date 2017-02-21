//
//  RFTabBarView.h
//  RFTabBarControllerDemo
//
//  Created by rocky on 2017/2/20.
//  Copyright © 2017年 RockyFung. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol RFTabBarViewDelegate <NSObject>

@optional

- (void)ChangSelIndexForm:(NSInteger)from to:(NSInteger)to;

@end

@interface RFTabBarView : UIView
@property (nonatomic, weak) id<RFTabBarViewDelegate> delegate;
// 设置tabBar背景图片
- (void)addImageView;

// 添加tabBar按钮
- (void)addBarButtonWithImageName:(NSString *)imageName selImageName:(NSString *)selImageName title:(NSString *)title;
@end
