//
//  EmotionKeyboard.m
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//

#import "EmotionKeyboard.h"
#import "EmotionListView.h"
#import "EmotionTabBar.h"
#import "Emotion.h"
#import "MJExtension.h"
#import "EmotionTool.h"

@interface EmotionKeyboard() <EmotionTabBarDelegate>
/** 保存正在显示listView */
@property (nonatomic, weak) EmotionListView *showingListView;
/** 表情内容 */
@property (nonatomic, strong) EmotionListView *recentListView;
@property (nonatomic, strong) EmotionListView *defaultListView;
@property (nonatomic, strong) EmotionListView *emojiListView;
@property (nonatomic, strong) EmotionListView *lxhListView;
/** tabbar */
@property (nonatomic, weak) EmotionTabBar *tabBar;
@end

@implementation EmotionKeyboard

#pragma mark - 懒加载
- (EmotionListView *)recentListView
{
    if (!_recentListView) {
        self.recentListView = [[EmotionListView alloc] init];
        // 加载沙盒中的数据
        self.recentListView.emotions = [EmotionTool recentEmotions];
    }
    return _recentListView;
}

- (EmotionListView *)defaultListView
{
    if (!_defaultListView) {
        self.defaultListView = [[EmotionListView alloc] init];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"EmotionIcons/default/info.plist" ofType:nil];
        self.defaultListView.emotions = [Emotion objectArrayWithKeyValuesArray:[NSArray arrayWithContentsOfFile:path]];
    }
    return _defaultListView;
}

- (EmotionListView *)emojiListView
{
    if (!_emojiListView) {
        self.emojiListView = [[EmotionListView alloc] init];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"EmotionIcons/emoji/info.plist" ofType:nil];
        self.emojiListView.emotions = [Emotion objectArrayWithKeyValuesArray:[NSArray arrayWithContentsOfFile:path]];
    }
    return _emojiListView;
}

- (EmotionListView *)lxhListView
{
    if (!_lxhListView) {
        self.lxhListView = [[EmotionListView alloc] init];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"EmotionIcons/lxh/info.plist" ofType:nil];
        self.lxhListView.emotions = [Emotion objectArrayWithKeyValuesArray:[NSArray arrayWithContentsOfFile:path]];
    }
    return _lxhListView;
}

#pragma mark - 初始化
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // tabbar
        EmotionTabBar *tabBar = [[EmotionTabBar alloc] init];
        tabBar.delegate = self;
        [self addSubview:tabBar];
        self.tabBar = tabBar;
        
        // 表情选中的通知
        [NotificationCenter addObserver:self selector:@selector(emotionDidSelect) name:EmotionDidSelectNotification object:nil];
    }
    return self;
}

- (void)emotionDidSelect
{
    self.recentListView.emotions = [EmotionTool recentEmotions];
}

- (void)dealloc
{
    [NotificationCenter removeObserver:self];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 1.tabbar
    self.tabBar.width = self.width;
    self.tabBar.height = 37;
    self.tabBar.x = 0;
    self.tabBar.y = self.height - self.tabBar.height;
    
    // 2.表情内容
    self.showingListView.x = self.showingListView.y = 0;
    self.showingListView.width = self.width;
    self.showingListView.height = self.tabBar.y;
}

#pragma mark - EmotionTabBarDelegate
- (void)emotionTabBar:(EmotionTabBar *)tabBar didSelectButton:(EmotionTabBarButtonType)buttonType
{
    // 移除正在显示的listView控件
    [self.showingListView removeFromSuperview];
    
    // 根据按钮类型，切换键盘上面的listview
    switch (buttonType) {
        case EmotionTabBarButtonTypeRecent: { // 最近
            // 加载沙盒中的数据
//            self.recentListView.emotions = [EmotionTool recentEmotions];
            [self addSubview:self.recentListView];
            break;
        }
            
        case EmotionTabBarButtonTypeDefault: { // 默认
            [self addSubview:self.defaultListView];
            break;
        }
            
        case EmotionTabBarButtonTypeEmoji: { // Emoji
            [self addSubview:self.emojiListView];
            break;
        }
            
        case EmotionTabBarButtonTypeLxh: { // Lxh
            [self addSubview:self.lxhListView];
            break;
        }
    }
    
    // 设置正在显示的listView
    self.showingListView = [self.subviews lastObject];
    
    // 设置frame
    [self setNeedsLayout];
}

@end
