//
//  TestViewController.m
//  JLBaseLibraryDemo
//
//  Created by 王金龙 on 2018/9/17.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import "TestViewController.h"
#import <JLBaseLibrary/JLBaseLibrary.h>

@interface TestViewController ()

@property (strong, nonatomic) NSTimer *timer;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.timer = [NSTimer sf_scheduledTimerWithTimeInterval:3 block:^{
         NSLog(@"开启定时器");
    } repeats:YES];
}

- (void) updateTime {
    NSLog(@"开启定时器");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

-(void)dealloc {
    [self.timer invalidate];
    self.timer = nil;
    NSLog(@"当前界面释放");
}

@end
