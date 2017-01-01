//
//  LXHStatusHUD.h
//  LXHStatusHUD
//
//  Created by 李小华 on 2017/1/1.
//  Copyright © 2017年 李小华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LXHStatusHUD : NSObject

/**
 加载成功
 @param msg 加载成功
 */
+(void)showSuccess:(NSString *)msg;
/**
 加载失败
 @param msg 加载失败
 */
+(void)showError:(NSString *)msg;
/**
 正在加载
 @param msg 正在加载
 */
+(void)Loading:(NSString *)msg;
/**
 显示普通消息
 @param msg 显示普通消息
 */
+(void)showMessage:(NSString *)msg;
/**
 显示图片加消息
 @param msg 显示图片加消息
 */
+(void)showSuccess:(NSString *)msg image:(UIImage *)image;
/**
 隐藏
 */
+(void)hide;
@end
