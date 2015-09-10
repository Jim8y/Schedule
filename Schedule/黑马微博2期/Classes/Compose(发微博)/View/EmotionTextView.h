//
//  EmotionTextView.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//

#import "TextView.h"
@class Emotion;

@interface EmotionTextView : TextView
- (void)insertEmotion:(Emotion *)emotion;

- (NSString *)fullText;
@end
