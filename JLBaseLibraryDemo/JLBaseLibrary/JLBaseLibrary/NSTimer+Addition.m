//
//  NSTimer+Addition.m
//  JLBaseLibrary
//
//  Created by 王金龙 on 2018/9/17.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import "NSTimer+Addition.h"

@implementation NSTimer (Addition)

- (void)pauseTimer {
    if (![self isValid]) {
        return ;
    }
    [self setFireDate: [NSDate distantFuture]];
}

-(void)resumeTimer
{
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate date]];
}

- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval
{
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate dateWithTimeIntervalSinceNow:interval]];
}
@end
