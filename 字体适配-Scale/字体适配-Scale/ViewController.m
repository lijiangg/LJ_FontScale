//
//  ViewController.m
//  字体适配-Scale
//
//  Created by yurong on 2017/12/14.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 44, 50, 50)];
    [btn setTitle:@"dd" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:12];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
   
    NSLog(@"%f",btn.titleLabel.font.pointSize);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
