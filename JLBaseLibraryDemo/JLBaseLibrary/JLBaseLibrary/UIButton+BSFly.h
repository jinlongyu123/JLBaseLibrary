//
//  UIButton+BSFly.h
//  JLBaseLibrary
//
//  Created by 王金龙 on 2018/9/14.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (BSFly)

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor highlightTitleColor:(UIColor *)highlightTitleColor cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor highlightBackgroundColor:(UIColor *)highlightBackgroundColor;

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor highlightTitleColor:(UIColor *)highlightTitleColor;

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor highlightTitleColor:(UIColor *)highlightTitleColor backgroundColor:(UIColor *)backgroundColor;

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor highlightTitleColor:(UIColor *)highlightTitleColor cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor;

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor highlightBackgroundColor:(UIColor *)highlightBackgroundColor;

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor highlightBackgroundColor:(UIColor *)highlightBackgroundColor;

+ (UIButton *)butttonWithImage:(UIImage *)image;

+ (UIButton *)butttonWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage;

+ (UIButton *)butttonWithImage:(UIImage *)image title:(NSString *)title fontSize:(CGFloat)fontSize;

+ (UIButton *)butttonWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage title:(NSString *)title fontSize:(CGFloat)fontSize;

+ (UIButton *)butttonWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage title:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize;
//---------------------------------------------------------------------------------------//

@end
