//
//  RootViewController.m
//  Test
//
//  Created by 沈红榜 on 15/4/9.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "RootViewController.h"
#import <RateView/RateView.h>
#import "CustomBtn.h"

@interface RootViewController ()

@end

@implementation RootViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//    view.center = self.view.center;
//    view.backgroundColor = [UIColor colorWithRed:220/255.0 green:55/255.0 blue:50/255.0 alpha:1.0];
//    [self.view addSubview:view];
    
//    CGFloat width = (CGRectGetWidth(self.view.bounds) - 60) / 5.;
//    
//    for (int i = 0; i < 5; i++) {
//        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10 + (width + 10) * i, 70, width, width)];
//        view.backgroundColor = [UIColor redColor];
//        view.layer.cornerRadius = width / 2.;
//        view.clipsToBounds = YES;
//        view.layer.shadowColor = [UIColor blackColor].CGColor;
//        [view.layer setMasksToBounds:YES];
//        [view.layer setBorderWidth:1];
//        [self.view addSubview:view];
//    }
    
    // 星星
//    RateView *rv = [RateView rateViewWithRating:3];
//    rv.backgroundColor = [UIColor redColor];
//    rv.center = self.view.center;
//    rv.starNormalColor = [UIColor blueColor];
//    rv.starFillColor = [UIColor yellowColor];
//    rv.starBorderColor = [UIColor redColor];
//    rv.starSize = 25;
//    rv.rating = 3.7;
//    rv.canRate = YES;
//    rv.starFillMode = StarFillModeHorizontal;
//    [self.view addSubview:rv];
    
    CustomBtn *btn = [CustomBtn buttonWithType:UIButtonTypeCustom];
//    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(0, 0, 58, 58);
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
  
    
    
    
}

- (void)clickBtn:(CustomBtn *)btn
{
    NSLog(@"%@", btn.titleLabel.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
