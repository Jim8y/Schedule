//
//  ComposeToolbar.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Extension.h"

typedef enum {
    ComposeToolbarButtonTypeCamera, // 拍照
    ComposeToolbarButtonTypePicture, // 相册
    ComposeToolbarButtonTypeMention, // @
    ComposeToolbarButtonTypeTrend, // #
    ComposeToolbarButtonTypeEmotion // 表情
} ComposeToolbarButtonType;

@class ComposeToolbar;

@protocol ComposeToolbarDelegate <NSObject>
@optional
- (void)composeToolbar:(ComposeToolbar *)toolbar didClickButton:(ComposeToolbarButtonType)buttonType;
@end

@interface ComposeToolbar : UIView
@property (nonatomic, weak) id<ComposeToolbarDelegate> delegate;
/** 是否要显示键盘按钮  */
@property (nonatomic, assign) BOOL showKeyboardButton;
@end
