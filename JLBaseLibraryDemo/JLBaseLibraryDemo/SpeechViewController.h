//
//  SpeechViewController.h
//  JLBaseLibraryDemo
//
//  Created by 王金龙 on 2018/9/20.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SpeechViewController : UIViewController

@property (nonatomic, strong ,readonly) AVSpeechSynthesizer *synthesizer;

+ (instancetype) speechController;
// 文本转语音的方法
- (void)beginSpeechWithStrings:(NSArray<NSString *>*)speechVoices;
@end
