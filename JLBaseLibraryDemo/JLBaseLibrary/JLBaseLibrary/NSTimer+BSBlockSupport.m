//
//  NSTimer+BSBlockSupport.m
//  JLBaseLibrary
//
//  Created by 王金龙 on 2018/9/17.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import "NSTimer+BSBlockSupport.h"

@implementation NSTimer (BSBlockSupport)

+ (NSTimer *)sf_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^)(void))block repeats:(BOOL)repeats{
    
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(sf_blockInvoke:) userInfo:[block copy] repeats:repeats];
}

+ (NSTimer *)sf_timerWithTimeInterval:(NSTimeInterval)seconds block:(void (^)(NSTimer *))block repeats:(BOOL)repeats{
    
    return [self timerWithTimeInterval:seconds target:self selector:@selector(sf_blockInvoke:) userInfo:[block copy] repeats:repeats];
}

+ (void)sf_blockInvoke:(NSTimer*)timer{
    
    if (timer.userInfo) {
        void(^block) (void) = timer.userInfo;
        block();
    }
}

@end
