//
//  ViewController.m
//  JLBaseLibraryDemo
//
//  Created by 王金龙 on 2018/9/13.
//  Copyright © 2018年 王金龙. All rights reserved.
//

#import "ViewController.h"
#import <JLBaseLibrary/JLBaseLibrary.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *lable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageView.image = [UIImage imageWithColor:[UIColor redColor]];
    [self.lable colorSubstring:@"123" newColor:[UIColor blueColor]];
    [self.lable fontSubstring:@"456" newFont:[UIFont systemFontOfSize:20]];
    [self.lable boldColorSubstring:@"789" newColor:[UIColor redColor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
