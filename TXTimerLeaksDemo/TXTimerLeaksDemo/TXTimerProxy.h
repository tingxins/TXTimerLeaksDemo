//
//  TXTimerProxy.h
//  TXTimerLeaksDemo
//
//  Created by tingxins on 03/11/2016.
//  Copyright © 2016 tingxins. All rights reserved.
//  参考：YYKit <https://github.com/ibireme/YYKit>

#import <Foundation/Foundation.h>

@interface TXTimerProxy : NSProxy

//注意此处weak
@property (weak, nonatomic, readonly) id target;

+ (instancetype)timerProxyWithTarget:(id)target;

- (instancetype)initWithTarget:(id)target;

@end
