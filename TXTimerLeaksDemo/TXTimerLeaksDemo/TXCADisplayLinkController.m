//
//  TXCADisplayLinkController.m
//  TXTimerLeaksDemo
//
//  Created by tingxins on 03/11/2016.
//  Copyright © 2016 tingxins. All rights reserved.
//

#import "TXCADisplayLinkController.h"

@interface TXCADisplayLinkController ()

@end

@implementation TXCADisplayLinkController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addNSTimerSomeFunctions];
}

- (void)addNSTimerSomeFunctions {
    /** 
     *  CADisplayLink操作基本和NSTimer一直。详见Blog：https://tingxins.com
     */
}

@end
