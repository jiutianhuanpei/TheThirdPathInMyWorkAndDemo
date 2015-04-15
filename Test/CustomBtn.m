//
//  CustomBtn.m
//  Test
//
//  Created by 沈红榜 on 15/4/15.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "CustomBtn.h"

@implementation CustomBtn {
    
//    UIImageView *_imgView;
//    UILabel *_label;
}

//- (void)drawRect:(CGRect)rect
//{
//    [super drawRect:rect];
////    self.titleLabel.frame = CGRectMake(20, 29, 58, 29);
//    self.titleLabel.backgroundColor = [UIColor redColor];
//    self.titleLabel.textAlignment = NSTextAlignmentCenter;
////    self.imageView.frame = CGRectMake(0, 0, 15, 15);
////    self.imageView.center = CGPointMake(29, 14.5);
//    
////    self.titleEdgeInsets = UIEdgeInsetsMake(29, 0, 14.5, 0);
//    self.titleEdgeInsets = UIEdgeInsetsMake(29, -20, 14.5, 0);
//    self.imageEdgeInsets = UIEdgeInsetsMake(7, 21.5, 36, 7);
//    
//    
//}


//- (void)drawRect:(CGRect)rect
//{
//    [super drawRect:rect];
//    
//    _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 24, 20)];
//    _imgView.backgroundColor = [UIColor redColor];
//    _imgView.center = CGPointMake(29, 14.5);
//    [self addSubview:_imgView];
//    
//    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 29, 58, 20)];
//    _label.textAlignment = NSTextAlignmentCenter;
//    _label.font = [UIFont systemFontOfSize:20];
//    _label.text = @"2000";
//    [self addSubview:_label];
//    
//    self.layer.cornerRadius = 29;
//    self.layer.masksToBounds = YES;
//    self.layer.borderWidth = 1;
//    self.layer.borderColor = [UIColor grayColor].CGColor;
//
//}

//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        
//   
//        
//        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 24, 20)];
//        _imgView.backgroundColor = [UIColor redColor];
//        _imgView.center = CGPointMake(29, 14.5);
//        [self addSubview:_imgView];
//        
//        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 29, 58, 20)];
//        _label.textAlignment = NSTextAlignmentCenter;
//        _label.font = [UIFont systemFontOfSize:20];
//        _label.text = @"2000";
//        [self addSubview:_label];
//        
//        self.layer.cornerRadius = 29;
//        self.layer.masksToBounds = YES;
//        self.layer.borderWidth = 1;
//        self.layer.borderColor = [UIColor grayColor].CGColor;
//
//        
//    }
//    return self;
//}
//
//- (CGRect)backgroundRectForBounds:(CGRect)bounds
//{
//    self.layer.cornerRadius = 29;
//    self.layer.masksToBounds = YES;
//    self.layer.borderWidth = 1;
//    return CGRectMake(0, 0, 58, 58);
//}
//
//- (CGRect)contentRectForBounds:(CGRect)bounds
//{
//    return CGRectMake(0, 0, 58, 58);
//}
//

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    
    return CGRectMake(0, 29, 58, 29);
}
//
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    
    return CGRectMake(29 - 12, 4.5, 15, 15);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
