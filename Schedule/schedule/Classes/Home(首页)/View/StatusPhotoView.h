//
//  StatusPhotoView.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
// 一张配图

#import <UIKit/UIKit.h>
@class Photo;

@interface StatusPhotoView : UIImageView
@property (nonatomic, strong) Photo *photo;
@end
