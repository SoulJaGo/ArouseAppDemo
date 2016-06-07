//
//  ViewController.m
//  ArouseAppDemo
//
//  Created by SoulJa on 16/6/7.
//  Copyright © 2016年 SoulJa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *appUrlScheme;
- (IBAction)onClickArouseBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClickArouseBtn {
    if (self.appUrlScheme.text.length <= 0) {
        return;
    }
    NSString *urlStr = [self.appUrlScheme.text stringByAppendingString:@"://"];
    NSURL *appUrl = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:appUrl]) {
        [[UIApplication sharedApplication] openURL:appUrl];
    }
}
@end
