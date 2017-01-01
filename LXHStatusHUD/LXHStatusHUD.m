//
//  LXHStatusHUD.m
//  LXHStatusHUD
//
//  Created by 李小华 on 2017/1/1.
//  Copyright © 2017年 李小华. All rights reserved.
//

#import "LXHStatusHUD.h"


@implementation LXHStatusHUD
static UIWindow * LXHWindow;
static NSTimer * LXHTimer;
static CGFloat const windowH = 20;
static CGFloat const animationDuration = 0.25;
static CGFloat const HUDStayDuration = 1.5;
/**
 显示图片加消息
 @param msg 显示图片加消息
 */
+(void)showSuccess:(NSString *)msg image:(UIImage *)image{
    LXHWindow = [[UIWindow alloc]init];
    LXHWindow.hidden = NO;
    LXHWindow.windowLevel = UIWindowLevelAlert;
    LXHWindow.backgroundColor = [UIColor blackColor];
    LXHWindow.frame = CGRectMake(0, -windowH, [UIScreen mainScreen].bounds.size.width, windowH);
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:msg forState:UIControlStateNormal];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = LXHWindow.bounds;
    if (image) {
        btn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 5);
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    }
    [LXHWindow addSubview:btn];
    [UIView animateWithDuration:animationDuration animations:^{
        CGRect frame = LXHWindow.frame;
        frame.origin.y = 0;
        LXHWindow.frame = frame;
    }];
    
}
/**
 加载成功
 @param msg 加载成功
 */
+(void)showSuccess:(NSString *)msg{
    
}
/**
 加载失败
 @param msg 加载失败
 */
+(void)showError:(NSString *)msg{
    
}
/**
 正在加载
 @param msg 正在加载
 */
+(void)Loading:(NSString *)msg{
    
}
/**
 显示普通消息
 @param msg 显示普通消息
 */
+(void)showMessage:(NSString *)msg{
    
}

/**
 隐藏
 */
+(void)hide{
    
}
@end
