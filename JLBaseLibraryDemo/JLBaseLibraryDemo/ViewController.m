//
//  ViewController.m
//  JLBaseLibraryDemo
//
//  Created by 王金龙 on 2018/9/13.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import "ViewController.h"
#import <JLBaseLibrary/JLBaseLibrary.h>
#import "TestViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "SpeechViewController.h"

@interface ViewController ()<AVSpeechSynthesizerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *lable;
@property (strong,nonatomic) NSTimer *timer;
@property (strong ,nonatomic)  AVSpeechUtterance *utterance;
@property (nonatomic,strong) NSMutableArray *speechStrings;
@property (nonatomic,weak) NSString *target;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageView.image = [UIImage imageWithColor:[UIColor redColor]];
    [self.lable colorSubstring:@"123" newColor:[UIColor blueColor]];
    [self.lable fontSubstring:@"456" newFont:[UIFont systemFontOfSize:20]];
    [self.lable boldColorSubstring:@"789" newColor:[UIColor redColor]];
    dispatch_queue_t queue = dispatch_queue_create("parallel", DISPATCH_QUEUE_CONCURRENT);
    for (int i = 0; i < 1000000 ; i++) {
        dispatch_async(queue, ^{
            self.target = [NSString stringWithFormat:@"ksddkjalkjd%d",i];
        });
    }
    /*
    NSObject *obj = [[NSObject alloc] init];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        @synchronized(obj) {
            NSLog(@"需要线程同步的操作1 开始");
            sleep(3);
            NSLog(@"需要线程同步的操作1 结束");
        }
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        sleep(1);
        @synchronized(obj) {
            NSLog(@"需要线程同步的操作2");
        }
    });
     */
    
   // 将定时器加到了主循环池中,则不需要手动调用fire启动定时器
    
    self.timer = [NSTimer sf_timerWithTimeInterval:3 block:^(NSTimer *timer) {
        NSLog(@"定时器1开启了");
    } repeats:YES];
    //[[NSRunLoop mainRunLoop]addTimer:_timer forMode:NSDefaultRunLoopMode];
    [self.timer fire];
    
    
    //子线程中开启定时器需要手动加入当前runloop中，并且需要开启子线程的Runloop
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        self.timer = [NSTimer sf_scheduledTimerWithTimeInterval:3 block:^{
            //NSLog(@"定时器开启了");
        } repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:self->_timer forMode:NSRunLoopCommonModes];
        [[NSRunLoop currentRunLoop] run];
    });
    
    self.speechStrings = [NSMutableArray array];
    SpeechViewController *spechVC = [SpeechViewController speechController];
    spechVC.synthesizer.delegate = self;
    [spechVC beginSpeechWithStrings:@[@"hello",@"老王",@"金龙鱼"]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickBtn:(UIButton *)sender {
     TestViewController *test = [TestViewController new];
    [self.navigationController pushViewController:test animated:YES];
    
}



@end
