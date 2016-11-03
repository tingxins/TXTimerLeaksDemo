//
//  NSTimer+TXTimerTarget.h
//  TXTimerLeaksDemo
//
//  Created by tingxins on 03/11/2016.
//  Copyright © 2016 tingxins. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (TXTimerTarget)

+ (NSTimer *)tx_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeat:(BOOL)yesOrNo block:(void(^)(NSTimer *timer))block;

@end
