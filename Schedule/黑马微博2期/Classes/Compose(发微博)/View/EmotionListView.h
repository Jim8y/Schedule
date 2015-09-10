//
//  EmotionListView.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//  表情键盘顶部的内容:scrollView + pageControl

#import <UIKit/UIKit.h>

@interface EmotionListView : UIView
/** 表情(里面存放的Emotion模型) */
@property (nonatomic, strong) NSArray *emotions;
@end
