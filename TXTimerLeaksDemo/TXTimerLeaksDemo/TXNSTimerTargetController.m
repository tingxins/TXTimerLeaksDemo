//
//  TXNSTimerTargetController.m
//  TXTimerLeaksDemo
//
//  Created by tingxins on 03/11/2016.
//  Copyright © 2016 tingxins. All rights reserved.
//

#import "TXNSTimerTargetController.h"
#import "NSTimer+TXTimerTarget.h"

@interface TXNSTimerTargetController ()

@end

@implementation TXNSTimerTargetController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addNSTimerBlock];
}

- (void)addNSTimerBlock {
    
    __weak typeof(self) weakSelf = self;//解决self循环引用问题
    NSTimer *timer = [NSTimer tx_scheduledTimerWithTimeInterval:0.25 repeat:YES block:^(NSTimer *timer) {
        TXNSTimerTargetController *strongSelf = weakSelf;
        if (strongSelf) {
            [strongSelf startTimer];
        }
    }];
    self.timer = timer;
}

- (void)startTimer {
    NSLog(@"TXNSTimerTargetController timer start");
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
