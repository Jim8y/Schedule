//
//  EmotionTool.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Emotion;

@interface EmotionTool : NSObject
+ (void)addRecentEmotion:(Emotion *)emotion;
+ (NSArray *)recentEmotions;
@end
