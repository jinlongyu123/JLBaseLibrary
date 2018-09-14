//
//  NSDate+Ago.h
//  JLBaseLibrary
//
//  Created by 王金龙 on 2018/9/14.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Ago)

+ (NSString *)timeInfoSinceNow:(NSTimeInterval)timeInterval;
- (NSString *)stringFromDateFormat:(NSString *)format;

@end
