//
//  NSTimer+TXTimerTarget.m
//  TXTimerLeaksDemo
//
//  Created by tingxins on 03/11/2016.
//  Copyright © 2016 tingxins. All rights reserved.
//

#import "NSTimer+TXTimerTarget.h"

@implementation NSTimer (TXTimerTarget)

+ (NSTimer *)tx_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeat:(BOOL)yesOrNo block:(void (^)(NSTimer *))block{
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(startTimer:) userInfo:[block copy] repeats:yesOrNo];
}

+ (void)startTimer:(NSTimer *)timer {
    void (^block)(NSTimer *timer) = timer.userInfo;
    if (block) {
        block(timer);
    }
}

@end
