//
//  StatusPhotosView.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//  cell上面的配图相册（里面会显示1~9张图片, 里面都是StatusPhotoView）

#import <UIKit/UIKit.h>

@interface StatusPhotosView : UIView
@property (nonatomic, strong) NSArray *photos;

/**
 *  根据图片个数计算相册的尺寸
 */
+ (CGSize)sizeWithCount:(NSUInteger)count;
@end
