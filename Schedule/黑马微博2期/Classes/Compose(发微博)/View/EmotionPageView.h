//
//  EmotionPageView.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//  用来表示一页的表情（里面显示1~20个表情）

#import <UIKit/UIKit.h>

// 一页中最多3行
#define EmotionMaxRows 3
// 一行中最多7列
#define EmotionMaxCols 7
// 每一页的表情个数
#define EmotionPageSize ((EmotionMaxRows * EmotionMaxCols) - 1)

@interface EmotionPageView : UIView
/** 这一页显示的表情（里面都是Emotion模型） */
@property (nonatomic, strong) NSArray *emotions;
@end
