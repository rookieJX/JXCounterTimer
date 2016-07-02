//
//  JXTimerButton.h
//  JXTimer
//
//  Created by 王加祥 on 16/7/2.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JXTimerButton;

@protocol JXTimerButtonDelegate <NSObject>

@required
- (void)timerButtonDidClick:(JXTimerButton *)button;

@end

@interface JXTimerButton : UIButton

/** 按钮点击 */
@property (nonatomic,weak) id<JXTimerButtonDelegate> delegate;

@end
