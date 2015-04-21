//
//  RootViewController.m
//  Test
//
//  Created by 沈红榜 on 15/4/9.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "TestViewController.h"
#import <RateView/RateView.h>
#import "CustomBtn.h"

@interface TestViewController ()

@end

@implementation TestViewController {
    
    UIScrollView *_scrollView;
    
    UIImageView *_topImg;
    UIImageView *_bottomImg;
    UIImageView *_photo;
    
    RateView *_starView;
    UILabel *_locationLal;
    
    UILabel *_nameLal;
    UILabel *_hospitalLal;
    UILabel *_contentLal;
    UILabel *_zanLal;
    UILabel *_loveLal;
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 自定义 button
    [self creatButton];
    
    
    // 创建 View
    [self creatView];
    
    
    
    
    
    


    
    

    
}

- (void)creatButton {
    CustomBtn *btn = [CustomBtn buttonWithType:UIButtonTypeCustom];
    //    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(0, 0, 58, 58);
    btn.center = self.view.center;
    [btn setTitle:@"132" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"account-circle-active"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    btn.layer.cornerRadius = 29;
    btn.layer.masksToBounds = YES;
    btn.layer.borderWidth = 1;
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn];
}

- (void)creatView {
    UIView *view = self.view;
    
    CGFloat maxWidth = CGRectGetWidth(self.view.frame);
    CGFloat photoW = 80;
    UIColor *textColor = [UIColor colorWithRed:0.525 green:0.537 blue:0.584 alpha:1.000];
    CGFloat theLineY = 130;
    CGFloat theBottomY = 270;
    
    _scrollView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.frame), CGRectGetMaxY(self.view.frame) + 10);
    _scrollView.alwaysBounceVertical = YES;
    _scrollView.alwaysBounceHorizontal = NO;
    _scrollView.showsVerticalScrollIndicator = NO;
    [view addSubview:_scrollView];
    
    _topImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, maxWidth, theLineY)];
    _topImg.image = [UIImage imageNamed:@"top"];
    [_scrollView addSubview:_topImg];
    
    _bottomImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, theLineY, maxWidth, theBottomY)];
    _bottomImg.image = [UIImage imageNamed:@"bottom"];
    _bottomImg.alpha = 0.3;
    [_scrollView addSubview:_bottomImg];
    
    _photo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, photoW, photoW)];
    _photo.image = [UIImage imageNamed:@"1"];
    _photo.center = CGPointMake(maxWidth / 2., theLineY);
    _photo.layer.cornerRadius = photoW / 2.;
    _photo.layer.masksToBounds = YES;
    _photo.layer.borderWidth = 2;
    _photo.layer.borderColor = [UIColor colorWithRed:0.545 green:0.541 blue:0.729 alpha:1.000].CGColor;
    [_scrollView addSubview:_photo];
    
    _starView = [RateView rateViewWithRating:5];
    _starView.starSize = 15;
    _starView.starFillColor = [UIColor colorWithRed:0.996 green:0.737 blue:0.039 alpha:1.000];
    _starView.starNormalColor = [UIColor clearColor];
    _starView.starBorderColor = _starView.starFillColor;
    _starView.starFillMode = StarFillModeAxial;
    _starView.center = CGPointMake(CGRectGetMinX(_photo.frame) / 2, theLineY + 15);
    [_scrollView addSubview:_starView];
    
    UIView *tempView = [[UIView alloc] initWithFrame:CGRectZero];
    UIImageView *locationImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"place-pin"]];
    locationImg.frame = CGRectMake(0, 0.5, 7, 10);
    [tempView addSubview:locationImg];
    
    _locationLal = [[UILabel alloc] initWithFrame:CGRectZero];
    _locationLal.text = @"50km";
    _locationLal.textColor = [UIColor colorWithRed:0.525 green:0.537 blue:0.584 alpha:1.000];
    _locationLal.font = [UIFont systemFontOfSize:11];
    _locationLal.frame = CGRectMake(12, -0.5, [_locationLal.text boundingRectWithSize:CGSizeMake(0, 11) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:11]} context:nil].size.width, 11);
    [tempView addSubview:_locationLal];
    tempView.frame = CGRectMake(0, 0, CGRectGetMaxX(_locationLal.frame), 11);
    CGFloat x = CGRectGetMaxX(_photo.frame) + (maxWidth - CGRectGetMaxX(_photo.frame)) / 2.;
    tempView.center = CGPointMake(x, CGRectGetMidY(_starView.frame));
    [_scrollView addSubview:tempView];
    
    _nameLal = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_photo.frame) + 10, maxWidth, 14)];
    _nameLal.font = [UIFont systemFontOfSize:14];
    _nameLal.text = @"王小萌教授";
    _nameLal.textAlignment = NSTextAlignmentCenter;
    [_scrollView addSubview:_nameLal];
    
    _hospitalLal = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_nameLal.frame) + 5, maxWidth, 14)];
    _hospitalLal.textColor = textColor;
    _hospitalLal.font = [UIFont systemFontOfSize:14];
    _hospitalLal.text = @"同仁医院 血液科";
    _hospitalLal.textAlignment = NSTextAlignmentCenter;
    [_scrollView addSubview:_hospitalLal];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"完善您的个人信息" forState:UIControlStateNormal];
    btn.tintColor = [UIColor whiteColor];
    CGRect btnRect = [btn.titleLabel.text boundingRectWithSize:CGSizeMake(0, 17) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17]} context:nil];
    btn.frame = CGRectMake(0, 0, btnRect.size.width, 25);
    btn.center = CGPointMake(maxWidth / 2, CGRectGetMaxY(_hospitalLal.frame) + 8.5 + 15);
    btn.layer.cornerRadius = 5;
    btn.layer.masksToBounds = YES;
    btn.layer.borderWidth = 1;
    btn.layer.borderColor = textColor.CGColor;
    [_scrollView addSubview:btn];
    
    _contentLal = [[UILabel alloc] initWithFrame:CGRectZero];
    _contentLal.textColor = textColor;
    _contentLal.font = [UIFont systemFontOfSize:14];
    _contentLal.text = @"完善个人信息，提高声誉，变得更加优秀！";
    _contentLal.textAlignment = NSTextAlignmentCenter;
    CGRect contentRect = [_contentLal.text boundingRectWithSize:CGSizeMake(0, 14) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14]} context:nil];
    _contentLal.frame = CGRectMake(20, CGRectGetMaxY(btn.frame) + 10, maxWidth - 40, contentRect.size.height);
    [_scrollView addSubview:_contentLal];
    
    _zanLal = [[UILabel alloc] initWithFrame:CGRectZero];
    _zanLal.font = [UIFont systemFontOfSize:11];
    _zanLal.text = @"213";
    _zanLal.textColor = textColor;
    CGFloat zanW = [self getWidth:_zanLal.text height:11 fontSize:11];
    _zanLal.frame = CGRectMake(maxWidth / 2 - 10 - zanW, CGRectGetMaxY(_contentLal.frame) + 30, zanW, 11);
    [_scrollView addSubview:_zanLal];
    
    UIImageView *zanImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"thumb-up"]];
    zanImg.frame = CGRectMake(0, 0, 14, 13);
    zanImg.center = CGPointMake(CGRectGetMinX(_zanLal.frame) - 5 - 7, CGRectGetMidY(_zanLal.frame));
    [_scrollView addSubview:zanImg];
    
    UIImageView *loveImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"account-circle-normal"]];
    loveImg.frame = CGRectMake(0, 0, 12, 12);
    loveImg.center = CGPointMake(maxWidth / 2 + 10 + 6, CGRectGetMidY(_zanLal.frame));
    [_scrollView addSubview:loveImg];
    
    _loveLal = [[UILabel alloc] initWithFrame:CGRectZero];
    _loveLal.font = [UIFont systemFontOfSize:11];
    _loveLal.text = @"213";
    _loveLal.textColor = textColor;
    CGFloat loveW = [self getWidth:_loveLal.text height:11 fontSize:11];
    _loveLal.frame = CGRectMake(CGRectGetMaxX(loveImg.frame) + 5, CGRectGetMinY(_zanLal.frame), loveW, 11);
    [_scrollView addSubview:_loveLal];
    
    
    for (int i = 0; i < 4; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255. green:arc4random() % 256 / 255. blue:arc4random() % 256 / 255. alpha:1.];
        button.frame = CGRectMake(0, 0, 40, 40);
        button.center = CGPointMake(maxWidth / 5 + maxWidth * i / 5, theLineY + theBottomY - 40);
        [_scrollView addSubview:button];
    }

}

- (CGFloat)getWidth:(NSString *)string height:(CGFloat)height fontSize:(CGFloat)fontSize
{
    CGRect rect = [string boundingRectWithSize:CGSizeMake(0, height) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]} context:nil];
    return rect.size.width;
}

- (CGFloat)getHeight:(NSString *)string width:(CGFloat)width fontSize:(CGFloat)fontSize
{
    CGRect rect = [string boundingRectWithSize:CGSizeMake(width, 0) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]} context:nil];
    return rect.size.height;
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
