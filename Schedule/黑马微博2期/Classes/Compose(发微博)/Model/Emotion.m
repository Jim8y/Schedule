//
//  Emotion.m
//  Schedule
//
//  Created by 廖京辉 on 15/9/10.
//  Copyright (c) 2015年 廖京辉. All rights reserved.
//

#import "Emotion.h"
#import "MJExtension.h"

@interface Emotion() <NSCoding>

@end

@implementation Emotion

MJCodingImplementation
/**
 *  从文件中解析对象时调用
 */
//- (id)initWithCoder:(NSCoder *)decoder
//{
//    if (self = [super init]) {
//        self.chs = [decoder decodeObjectForKey:@"chs"];
//        self.png = [decoder decodeObjectForKey:@"png"];
//        self.code = [decoder decodeObjectForKey:@"code"];
//    }
//    return self;
//}
//
///**
// *  将对象写入文件的时候调用
// */
//- (void)encodeWithCoder:(NSCoder *)encoder
//{
//    [encoder encodeObject:self.chs forKey:@"chs"];
//    [encoder encodeObject:self.png forKey:@"png"];
//    [encoder encodeObject:self.code forKey:@"code"];
//}

/**
 *  常用来比较两个Emotion对象是否一样
 *
 *  @param other 另外一个Emotion对象
 *
 *  @return YES : 代表2个对象是一样的，NO: 代表2个对象是不一样
 */
- (BOOL)isEqual:(Emotion *)other
{
//    if (self == other) {
//        return YES;
//    } else {
//        return NO;
//    }
    
//    Log(@"%@--isEqual---%@", self.chs, other.chs);
    
//    NSString *str1 = @"jack";
//    NSString *str2 = [NSString stringWithFormat:@"jack"];
//    
//    str1 == str2 // no
//    [str1 isEqual:str2]; // NO
//    [str1 isEqualToString:str2] // YES
    return [self.chs isEqualToString:other.chs] || [self.code isEqualToString:other.code];
}

@end
