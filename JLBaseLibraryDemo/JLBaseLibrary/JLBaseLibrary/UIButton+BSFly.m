//
//  UIButton+BSFly.m
//  JLBaseLibrary
//
//  Created by 王金龙 on 2018/9/14.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import "UIButton+BSFly.h"
#import "UIImage+BSAdd.h"

@implementation UIButton (BSFly)
#pragma mark - 快速创建UIButton
#pragma mark -

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor highlightTitleColor:(UIColor *)highlightTitleColor{
    return [self buttonWithTitle:title titleColor:titleColor highlightTitleColor:highlightTitleColor cornerRadius:0 backgroundColor:nil highlightBackgroundColor:nil];
}

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor highlightTitleColor:(UIColor *)highlightTitleColor backgroundColor:(UIColor *)backgroundColor{
    return [self buttonWithTitle:title titleColor:titleColor highlightTitleColor:highlightTitleColor cornerRadius:0 backgroundColor:backgroundColor highlightBackgroundColor:nil];
}

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor highlightBackgroundColor:(UIColor *)highlightBackgroundColor{
    return [self buttonWithTitle:title titleColor:titleColor highlightTitleColor:nil cornerRadius:cornerRadius backgroundColor:backgroundColor highlightBackgroundColor:highlightBackgroundColor];
}


+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor highlightTitleColor:(UIColor *)highlightTitleColor cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor{
    return [self buttonWithTitle:title titleColor:titleColor highlightTitleColor:highlightTitleColor cornerRadius:cornerRadius backgroundColor:backgroundColor highlightBackgroundColor:nil];
}

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor highlightBackgroundColor:(UIColor *)highlightBackgroundColor{
    return [self buttonWithTitle:title titleColor:titleColor highlightTitleColor:nil cornerRadius:0 backgroundColor:backgroundColor highlightBackgroundColor:highlightBackgroundColor];
}
+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor highlightTitleColor:(UIColor *)highlightTitleColor cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor highlightBackgroundColor:(UIColor *)highlightBackgroundColor{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    if (titleColor) {
        [button setTitleColor:titleColor forState:UIControlStateNormal];
    }
    if (highlightTitleColor) {
        [button setTitleColor:highlightTitleColor forState:UIControlStateHighlighted];
        [button setTitleColor:highlightTitleColor forState:UIControlStateSelected];
    }
    if (cornerRadius > 0) {
        button.layer.cornerRadius = cornerRadius;
        button.layer.masksToBounds = YES;
        button.clipsToBounds = YES;
    }
    if (backgroundColor) {
        [button setBackgroundImage:[UIImage imageWithColor:backgroundColor] forState:UIControlStateNormal];
    }
    if (highlightBackgroundColor) {
        [button setBackgroundImage:[UIImage imageWithColor:highlightBackgroundColor] forState:UIControlStateHighlighted];
        [button setBackgroundImage:[UIImage imageWithColor:highlightBackgroundColor] forState:UIControlStateSelected];
    }
    return button;
 }

#pragma mark -
#pragma mark -

+ (UIButton *)butttonWithImage:(UIImage *)image{
    return [self butttonWithImage:image highlightImage:nil title:nil titleColor:nil fontSize:[UIFont systemFontSize]];
}

+ (UIButton *)butttonWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage{
    return [self butttonWithImage:image highlightImage:highlightImage title:nil titleColor:nil fontSize:[UIFont systemFontSize]];
}

+ (UIButton *)butttonWithImage:(UIImage *)image title:(NSString *)title fontSize:(CGFloat)fontSize{
    return [self butttonWithImage:image highlightImage:nil title:title titleColor:nil fontSize:fontSize];
}

+ (UIButton *)butttonWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage title:(NSString *)title fontSize:(CGFloat)fontSize{
    return [self butttonWithImage:image highlightImage:highlightImage title:title titleColor:nil fontSize:fontSize];
}

+ (UIButton *)butttonWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage title:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    if (highlightImage) {
        [button setImage:highlightImage forState:UIControlStateHighlighted];
        [button setImage:highlightImage forState:UIControlStateSelected];
    }
    if ([title length]) {
        [button setTitle:title forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    }
    if (titleColor) {
        [button setTitleColor:titleColor forState:UIControlStateNormal];
    }
    
    return button;
}
@end
