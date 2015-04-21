//
//  SHBCustomCell.m
//  Test
//
//  Created by 沈红榜 on 15/4/20.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "SHBCustomCell.h"

@implementation SHBCustomCell {
    UIView *_imgView;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIView *contentView = self.contentView;
        _imgView = [[UIView alloc] initWithFrame:CGRectZero];
        [contentView addSubview:_imgView];
        
    }
    return self;
}

- (CGSize)getSize:(SHBDataModel *)model {
    NSString *imgName = model.imgName;
    _imgView.layer.contents = (__bridge id)([UIImage imageNamed:imgName].CGImage);
    _imgView.frame = CGRectMake(0, 0, 100, 100);
    _imgView.center = CGPointMake(CGRectGetWidth(self.bounds) / 2, 52);
    
    
    return CGSizeMake(CGRectGetWidth(self.bounds), CGRectGetMaxY(_imgView.frame) + 2);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
