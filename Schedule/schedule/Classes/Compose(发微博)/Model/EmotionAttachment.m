//
//  EmotionAttachment.m
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//

#import "EmotionAttachment.h"
#import "Emotion.h"

@implementation EmotionAttachment
- (void)setEmotion:(Emotion *)emotion
{
    _emotion = emotion;
    
    self.image = [UIImage imageNamed:emotion.png];
}
@end
