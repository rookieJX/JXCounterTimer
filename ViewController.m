//
//  ViewController.m
//  JXTimer
//
//  Created by 王加祥 on 16/7/2.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import "ViewController.h"
#import "JXTimerButton.h"
@interface ViewController () <JXTimerButtonDelegate>
/** 按钮 */
@property (nonatomic,weak) JXTimerButton * authCodeBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self authCodeBtn];
    
    
}

#pragma mark - 代理
- (void)timerButtonDidClick:(JXTimerButton *)button {
    NSLog(@"按钮被点击");
}

- (UIButton *)authCodeBtn{
    if (_authCodeBtn == nil) {
        JXTimerButton * authCodeBtn  = [JXTimerButton buttonWithType:UIButtonTypeCustom];
        [self.view addSubview:authCodeBtn];
        authCodeBtn.center = CGPointMake(100, 100);
        authCodeBtn.delegate = self;
//        [authCodeBtn addTarget:authCodeBtn action:@selector(openCountdown) forControlEvents:UIControlEventTouchDown];
        _authCodeBtn = authCodeBtn;
    }
    return _authCodeBtn;
}
@end
