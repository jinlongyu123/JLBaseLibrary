//
//  NSTimer+Addition.h
//  JLBaseLibrary
//
//  Created by 王金龙 on 2018/9/17.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Addition)

- (void)pauseTimer;
- (void)resumeTimer;
- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval;

@end
