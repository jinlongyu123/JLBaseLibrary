//
//  SpeechViewController.m
//  JLBaseLibraryDemo
//
//  Created by 王金龙 on 2018/9/20.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import "SpeechViewController.h"

@interface SpeechViewController ()
@property (nonatomic,strong) NSArray *voices;
@end

static SpeechViewController * shareSelf = nil;
@implementation SpeechViewController

#pragma mark - 创建一个类方法来管理语音合成器
+ (instancetype) speechController{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareSelf = [[self alloc]init];
    });
    return shareSelf;
}


- (instancetype)init{
    self = [super init];
    if (self) {
        //嘴巴
        _synthesizer = [AVSpeechSynthesizer new];
        //语音合成器可识别的语言
        _voices = @[[AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"],[AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - 文本转语音的方法
- (void)beginSpeechWithStrings:(NSArray<NSString *>*)speechVoices{
    //数组中有几句话就要说几次
    for (int i = 0; i<speechVoices.count; i++) {
        //舌头
        AVSpeechUtterance *utt = [[AVSpeechUtterance alloc]initWithString:speechVoices[i]];
        //对舌头进行设置
        //设置声音是播放中文还是英文（单数播放英文，双数播放中文）
        utt.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"];
        // 设置速率(0- 1)
        utt.rate = 0.4;
        // 设置音调(0-1)
        utt.pitchMultiplier = 0.8;
        // 设置延迟处理
        utt.postUtteranceDelay = 0.2;
        //说话
        [self.synthesizer speakUtterance:utt];
    }
}


@end
