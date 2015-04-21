//
//  SHBDataSource.m
//  Test
//
//  Created by 沈红榜 on 15/4/20.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "SHBDataSource.h"
#import <AdvancedCollectionView/AAPLCollectionViewCell.h>
#import "SHBDataModel.h"
#import "SHBCustomCell.h"

@implementation SHBDataSource

// 注册 cell
- (void)registerReusableViewsWithCollectionView:(UICollectionView *)collectionView {
    [super registerReusableViewsWithCollectionView:collectionView];
    
    [collectionView registerClass:[SHBCustomCell class] forCellWithReuseIdentifier:NSStringFromClass([SHBCustomCell class])];
    
}

// 创建 cell
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    id object = [self itemAtIndexPath:indexPath];
    AAPLCollectionViewCell *cell = nil;
    if ([object isKindOfClass:[SHBDataModel class]]) {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SHBCustomCell class]) forIndexPath:indexPath];
        [(SHBCustomCell *)cell getSize:object];
    }
    
    return cell;
}

// item 大小
- (CGSize)collectionView:(UICollectionView *)collectionView sizeFittingSize:(CGSize)size forItemAtIndexPath:(NSIndexPath *)indexPath {
    id object = [self itemAtIndexPath:indexPath];
    AAPLCollectionViewCell *cell = nil;
    CGSize cSize = CGSizeZero;
    if ([object isKindOfClass:[SHBDataModel class]]) {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SHBCustomCell class]) forIndexPath:indexPath];
        cSize = [(SHBCustomCell *)cell getSize:object];
    }
    
    [cell removeFromSuperview];
    return cSize;
}

// 加载数据
- (void)loadContent {
    [self loadContentWithBlock:^(AAPLLoading *loading) {
        void (^handler)(NSArray *, NSError *) = ^(NSArray *data, NSError *error) {
            
            if (!loading.current) {
                [loading ignore];
            }
            
            if (error) {
                [loading doneWithError:error];
            }
            if (data.count) {
                [loading updateWithContent:^(SHBDataSource *object) {
                    object.items = data;
                }];
            } else {
                [loading updateWithNoContent:^(SHBDataSource *object) {
                    object.items = @[];
                }];
            }
        };
        
        // 加载 模型
        SHBDataModel *model1 = [[SHBDataModel alloc] init];
        model1.imgName = @"1";
        
        
        
        handler(@[model1], nil);
    }];
}


@end
