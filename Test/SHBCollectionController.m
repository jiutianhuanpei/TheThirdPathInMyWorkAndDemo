//
//  SHBCollectionController.m
//  Test
//
//  Created by 沈红榜 on 15/4/20.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "SHBCollectionController.h"
#import "SHBDataSource.h"

@interface SHBCollectionController ()

@end

@implementation SHBCollectionController {
    SHBDataSource *_dataSource;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _dataSource = [[SHBDataSource alloc] init];
    _dataSource.defaultMetrics.rowHeight = AAPLRowHeightVariable;
    _dataSource.noContentMessage = @"无数据";
    self.collectionView.dataSource = _dataSource;
    
    
    
    
    
    
    
    
    
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
