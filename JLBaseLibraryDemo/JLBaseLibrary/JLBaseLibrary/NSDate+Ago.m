//
//  NSDate+Ago.m
//  JLBaseLibrary
//
//  Created by 王金龙 on 2018/9/14.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import "NSDate+Ago.h"

@implementation NSDate (Ago)

+ (NSString *)timeInfoSinceNow:(NSTimeInterval)timeInterval {
    NSTimeInterval currentTime = [[NSDate date] timeIntervalSince1970];
    NSTimeInterval createTime = timeInterval/1000;
    //时间差
    NSTimeInterval time = currentTime - createTime;
    if (time<60) {
        return [NSString stringWithFormat:@"%ld秒钟前",(long)time];
    }
    //小于1小时
    if (time < 3600) {
        NSInteger minutes = time/60;
        minutes = MAX(0, minutes);
        return [NSString stringWithFormat:@"%ld分钟前",(long)minutes];
    }
    // 秒转小时
    NSInteger hours = time/3600;
    if (hours<24) {
        return [NSString stringWithFormat:@"%ld小时前",(long)hours];
    }
    //秒转天数
    NSInteger days = time/3600/24;
    if (days < 30) {
        return [NSString stringWithFormat:@"%ld天前",(long)days];
    }
    //秒转月
    NSInteger months = time/3600/24/30;
    if (months < 12) {
        return [NSString stringWithFormat:@"%ld个月前",(long)months];
    }
    //秒转年
    NSInteger years = time/3600/24/30/12;
    return [NSString stringWithFormat:@"%ld年前",(long)years];
}

- (NSString *)stringFromDateFormat:(NSString *)format {
    NSString *time = nil;
    static NSDateFormatter *formatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        formatter = [[NSDateFormatter alloc] init];
    });
    [formatter setDateFormat:[format length]? format: @"yyyy-MM-dd HH:mm:ss"];
    time = [formatter stringFromDate:self];
    return time;
}
@end
