//
//  ViewController.m
//  ChainProgramming
//
//  Created by Zheng on 2017/3/30.
//  Copyright © 2017年 Zheng. All rights reserved.
//

#import "ViewController.h"

#import "UIView+CXExtension.h"
#import "Chain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *hview = [UIView new];
    [self.view addSubview:hview];
    hview.setFrame(100,100,100,100).setBackgroudColor([UIColor orangeColor]);
    
    float result = [Chain makeChain:^(Chain *make) {
        make.add(13).sub(5).mul(2).div(5);
    }];
    
    NSLog(@"-----%.2f-----",result);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
