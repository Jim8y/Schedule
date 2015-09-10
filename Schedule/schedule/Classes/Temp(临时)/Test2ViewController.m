//
//  Test2ViewController.m
//  黑马微博2期
//
//  Created by apple on 14-10-7.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "Test2ViewController.h"
#import "Test1ViewController.h"

@interface Test2ViewController ()

@end

@implementation Test2ViewController
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    Test1ViewController *test3 = [[Test1ViewController alloc] init];
    test3.title = @"测试3控制器";
    [self.navigationController pushViewController:test3 animated:YES];
}
@end
