//
//  StatusToolbar.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Status;
@interface StatusToolbar : UIView
+ (instancetype)toolbar;
@property (nonatomic, strong) Status *status;
@end
