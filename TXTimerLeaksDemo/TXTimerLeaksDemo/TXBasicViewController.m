//
//  TXBasicViewController.m
//  TXTimerLeaksDemo
//
//  Created by tingxins on 03/11/2016.
//  Copyright © 2016 tingxins. All rights reserved.
//

#import "TXBasicViewController.h"

@interface TXBasicViewController ()

@end

@implementation TXBasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [self.timer invalidate];
    NSLog(@"%@_%s", self.class, __func__);
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
