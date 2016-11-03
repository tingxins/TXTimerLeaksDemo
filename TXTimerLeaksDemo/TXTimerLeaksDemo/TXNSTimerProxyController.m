//
//  TXNSTimerProxyController.m
//  TXTimerLeaksDemo
//
//  Created by tingxins on 03/11/2016.
//  Copyright © 2016 tingxins. All rights reserved.
//

#import "TXNSTimerProxyController.h"

#import "TXTimerProxy.h"
//#import "YYWeakProxy.h"

@interface TXNSTimerProxyController ()

@end

@implementation TXNSTimerProxyController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addNSTimerProxy];
}

- (void)addNSTimerProxy {
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.25 target:[TXTimerProxy timerProxyWithTarget:self] selector:@selector(startTimer) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    self.timer = timer;
}

- (void)startTimer {
    NSLog(@"TXNSTimerProxyController timer start");
}

-(void)dealloc {
    NSLog(@"dealloc");
}

@end
