//
//  RFTabButton.m
//  RFTabBarControllerDemo
//
//  Created by rocky on 2017/2/20.
//  Copyright © 2017年 RockyFung. All rights reserved.
//

#import "RFTabButton.h"
#import "UIView+Frame.h"

@implementation RFTabButton

// 重写取消高亮显示
- (void)setHighlighted:(BOOL)highlighted{
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    //    self.titleLabel.x = self.imageView.x;
    self.imageView.y = 5;
    self.imageView.width = 25;
    self.imageView.height = 25;
    self.imageView.x = (self.width - self.imageView.width)/2.0;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.titleLabel.x = self.imageView.x - (self.titleLabel.width - self.imageView.width)/2.0;
    self.titleLabel.y = CGRectGetMaxY(self.imageView.frame) + 2;
    
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    self.titleLabel.shadowColor = [UIColor clearColor];
    
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    
}


@end
