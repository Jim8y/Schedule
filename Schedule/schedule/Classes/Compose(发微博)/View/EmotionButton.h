//
//  EmotionButton.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Emotion;
@interface EmotionButton : UIButton
@property (nonatomic, strong) Emotion *emotion;
@end
