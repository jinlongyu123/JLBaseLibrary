//
//  UIDevice+BSAdd.h
//  JLBaseLibrary
//
//  Created by 王金龙 on 2018/9/14.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (BSAdd)
#pragma mark - Device Information
///=============================================================================
/// @name Device Information
///=============================================================================
+ (float)systemVersion;

/// Whether the device is iPad/iPad mini.
@property (nonatomic, readonly) BOOL isPad;

/// Whether the device is a simulator.
@property (nonatomic, readonly) BOOL isSimulator;

/// Wherher the device can make phone calls.
@property (nonatomic, readonly) BOOL canMakePhoneCalls NS_EXTENSION_UNAVAILABLE_IOS("");

/// The device's machine model.  e.g. "iPhone6,1" "iPad4,6"
/// @see http://theiphonewiki.com/wiki/Models
@property (nonatomic, readonly) NSString *machineModel;

/// The device's machine model name. e.g. "iPhone 5s" "iPad mini 2"
/// @see http://theiphonewiki.com/wiki/Models
@property (nonatomic, readonly) NSString *machineModelName;

/// The System's startup time.
@property (nonatomic, readonly) NSDate *systemUptime;


#pragma mark - Network Information
///=============================================================================
/// @name Network Information
///=============================================================================

/// WIFI IP address of this device (can be nil). e.g. @"192.168.1.111"
@property (nonatomic, readonly) NSString *ipAddressWIFI;

/// Cell IP address of this device (can be nil). e.g. @"10.2.2.222"
@property (nonatomic, readonly) NSString *ipAddressCell;



#pragma mark - Disk Space
///=============================================================================
/// @name Disk Space
///=============================================================================

/// Total disk space in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t diskSpace;

/// Free disk space in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t diskSpaceFree;

/// Used disk space in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t diskSpaceUsed;


#pragma mark - Memory Information
///=============================================================================
/// @name Memory Information
///=============================================================================

/// Total physical memory in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t memoryTotal;

/// Used (active + inactive + wired) memory in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t memoryUsed;

/// Free memory in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t memoryFree;

/// Acvite memory in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t memoryActive;

/// Inactive memory in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t memoryInactive;

/// Wired memory in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t memoryWired;

/// Purgable memory in byte. (-1 when error occurs)
@property (nonatomic, readonly) int64_t memoryPurgable;

#pragma mark - CPU Information
///=============================================================================
/// @name CPU Information
///=============================================================================

/// Avaliable CPU processor count.
@property (nonatomic, readonly) NSUInteger cpuCount;

/// Current CPU usage, 1.0 means 100%. (-1 when error occurs)
@property (nonatomic, readonly) float cpuUsage;

/// Current CPU usage per processor (array of NSNumber), 1.0 means 100%. (nil when error occurs)
@property (nonatomic, readonly) NSArray *cpuUsagePerProcessor;

@end

