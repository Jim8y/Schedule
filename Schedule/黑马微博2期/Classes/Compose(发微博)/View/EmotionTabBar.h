//
//  EmotionTabBar.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//  表情键盘底部的选项卡

#import <UIKit/UIKit.h>

typedef enum {
    EmotionTabBarButtonTypeRecent, // 最近
    EmotionTabBarButtonTypeDefault, // 默认
    EmotionTabBarButtonTypeEmoji, // emoji
    EmotionTabBarButtonTypeLxh, // 浪小花
} EmotionTabBarButtonType;

@class EmotionTabBar;

@protocol EmotionTabBarDelegate <NSObject>

@optional
- (void)emotionTabBar:(EmotionTabBar *)tabBar didSelectButton:(EmotionTabBarButtonType)buttonType;
@end

@interface EmotionTabBar : UIView
@property (nonatomic, weak) id<EmotionTabBarDelegate> delegate;
@end
