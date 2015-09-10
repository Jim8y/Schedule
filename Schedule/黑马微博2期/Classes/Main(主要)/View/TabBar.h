//
//  TabBar.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TabBar;

#warning 因为TabBar继承自UITabBar，所以称为TabBar的代理，也必须实现UITabBar的代理协议
@protocol TabBarDelegate <UITabBarDelegate>
@optional
- (void)tabBarDidClickPlusButton:(TabBar *)tabBar;
@end

@interface TabBar : UITabBar
@property (nonatomic, weak) id<TabBarDelegate> delegate;
@end
