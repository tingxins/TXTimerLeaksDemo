//
//  TXNSTimerBlockController.m
//  TXTimerLeaksDemo
//
//  Created by tingxins on 03/11/2016.
//  Copyright © 2016 tingxins. All rights reserved.
//

#import "TXNSTimerBlockController.h"

@interface TXNSTimerBlockController ()

@end

@implementation TXNSTimerBlockController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addNSTimerBlock];
}

- (void)addNSTimerBlock {
    //NSTimer Block(解决self内存泄露) 模拟器会崩溃
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.25 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"TXNSTimerBlockController timer start");
    }];
    
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    self.timer = timer;
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
