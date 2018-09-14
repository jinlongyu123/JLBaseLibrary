//
//  UILabel+BSFly.h
//  JLBaseLibrary
//
//  Created by 王金龙 on 2018/9/14.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (BSFly)
+ (UILabel *)labelWithText:(NSString *)text textColor:(UIColor *)color fontSize:(CGFloat)fontSize numberOfLines:(NSInteger)numberOfLines textAlignment:(NSTextAlignment)textAlignment;

+ (UILabel *)labelWithText:(NSString *)text textColor:(UIColor *)color fontSize:(CGFloat)fontSize numberOfLines:(NSInteger)numberOfLines;

+ (UILabel *)labelWithText:(NSString *)text textColor:(UIColor *)color fontSize:(CGFloat)fontSize;

+ (UILabel *)labelWithText:(NSString *)text textColor:(UIColor *)color;

+ (UILabel *)labelWithTextColor:(UIColor *)color fontSize:(CGFloat)fontSize;


//--------------------------------------------------------------------------------------//

- (void)boldSubstring:(NSString *)substring;

- (void)boldRange:(NSRange)range;

- (void)colorSubstring:(NSString *)substring newColor:(UIColor *)color;

- (void)colorRange:(NSRange)range newColor:(UIColor *)color;
- (void)fontSubstring:(NSString *)substring newFont:(UIFont *)font;

- (void)fontRange:(NSRange)range newFont:(UIFont *)font;


- (void)boldColorSubstring:(NSString *)substring newColor:(UIColor *)color;

- (void)boldColorRange:(NSRange)range newColor:(UIColor *)color;

//--------------------------------------------------------------------------------------//

- (void)adjustKernWithSpacing:(CGFloat)spacing range:(NSRange)range;

- (void)adjustKernWithSpacing:(CGFloat)spacing;

- (void)adjustLineSpacingWithSpacing:(CGFloat)lineSpacing;

- (void)adjustLineSpacingWithSpacing:(CGFloat)lineSpacing range:(NSRange)range;
@end
