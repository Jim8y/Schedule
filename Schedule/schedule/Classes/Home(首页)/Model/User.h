//
//  User.h
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//  用户模型

#import <Foundation/Foundation.h>

typedef enum {
    UserVerifiedTypeNone = -1, // 没有任何认证
    
    UserVerifiedPersonal = 0,  // 个人认证
    
    UserVerifiedOrgEnterprice = 2, // 企业官方：CSDN、EOE、搜狐新闻客户端
    UserVerifiedOrgMedia = 3, // 媒体官方：程序员杂志、苹果汇
    UserVerifiedOrgWebsite = 5, // 网站官方：猫扑
    
    UserVerifiedDaren = 220 // 微博达人
} UserVerifiedType;

@interface User : NSObject
/**	string	字符串型的用户UID*/
@property (nonatomic, copy) NSString *idstr;

/**	string	友好显示名称*/
@property (nonatomic, copy) NSString *name;

/**	string	用户头像地址，50×50像素*/
@property (nonatomic, copy) NSString *profile_image_url;

/** 会员类型 > 2代表是会员 */
@property (nonatomic, assign) int mbtype;
/** 会员等级 */
@property (nonatomic, assign) int mbrank;
@property (nonatomic, assign, getter = isVip) BOOL vip;

/** 认证类型 */
@property (nonatomic, assign) UserVerifiedType verified_type;
@end
