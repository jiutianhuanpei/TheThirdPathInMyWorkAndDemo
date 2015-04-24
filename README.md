# TheThirdPathInMyWorkAndDemo
项目中用到的三方和Demo
##如下↓
#
###pod 'AFNetworking'
git仓库：https://github.com/AFNetworking/AFNetworking
* 轻量级网络请求

###pod 'HexColors'
git仓库：https://github.com/mRs-/HexColors
* 加载 十六 位进制的颜色
```object
_titleLbl.textColor = [UIColor colorWithHexString:@"413f55"];
```

###pod 'EAIntroView'
git仓库：https://github.com/ealeksandrov/EAIntroView
* 用来实现软件启动时介绍的控件，支持多个视图进行滑动显示

###pod 'FMDB'
git仓库：https://github.com/ccgus/fmdb
* FMDB是iOS平台的SQLite数据库框架

###pod 'HPGrowingTextView'
git仓库：https://github.com/yatinsns/HPGrowingTextView
* 一个 UITextView 的扩展，实现了当文本增多和减少是对输入框本身的伸缩和滚动处理

###pod 'SVProgressHUD'
git仓库：https://github.com/TransitApp/SVProgressHUD
* 加载动画--俗称：菊花

###pod 'libqrencode'
git仓库：https://github.com/fukuchi/libqrencode
* 是一个用C语言编写的用来解析二维条形码(QR Code)的程序库，libqrencode通过手机的CCD摄像头来扫描二维条形码

###pod 'M13BadgeView'
git仓库：https://github.com/Marxon13/M13BadgeView
* 设置角标

###pod 'UMeng'
链接：http://dev.umeng.com/files/download/Analytics_iOS_SDK_2.2.1.OpenUDID.zip
* 友盟：推送、统计

###pod 'AdvancedCollectionView',:git => 'https://github.com/akolov/AdvancedCollectionView.git'
* 对UICollectionView封装， 比较方便， 就是github上没有比较详细的教程

###pod 'XMPPFramework'
git仓库：https://github.com/robbiehanson/XMPPFramework
* XMPP协议的一个objective-c实现

###pod 'PPiFlatSegmentedControl'
git仓库：https://github.com/pepibumur/PPiFlatSegmentedControl
* 实现了多种扁平风格的分段控制的效果，支持图标字体
```object
// 分享栏
_buttonAction = [[PPiFlatSegmentedControl alloc] initWithFrame:CGRectMake(20,20,CGRectGetWidth(frame)-40,30)
    items:@[[[PPiFlatSegmentItem alloc] initWithTitle:@"赞" andIcon:[UIImage imageNamed:@"thumb-up"]],[[PPiFlatSegmentItem alloc] initWithTitle:@"评论" andIcon:[UIImage imageNamed:@"pinglun"]],[[PPiFlatSegmentItem alloc] initWithTitle:@"分享" andIcon:[UIImage imageNamed:@"share"]]]
        iconPosition:IconPositionLeft
        andSelectionBlock:^(NSUInteger segmentIndex) {
    switch (segmentIndex) {
        case 0:
        [self aapl_sendAction:@selector(support:) from:self];
        break;
        case 1:
        [self aapl_sendAction:@selector(comment:) from:self];
        break;
    default:
        [self aapl_sendAction:@selector(share:) from:self];
        break;
        };
        }
    iconSeparation:5];

_buttonAction.color=[UIColor whiteColor];
_buttonAction.borderWidth=0.5;
_buttonAction.borderColor=[UIColor appSecondaryColor];
_buttonAction.selectedColor=[UIColor clearColor];
_buttonAction.textAttributes=@{NSFontAttributeName:[UIFont systemFontOfSize:13],NSBackgroundColorAttributeName:[UIColor clearColor]};
_buttonAction.selectedTextAttributes=@{NSFontAttributeName:[UIFont systemFontOfSize:13],
NSForegroundColorAttributeName:[UIColor appPrimaryColor],NSBackgroundColorAttributeName:[UIColor whiteColor]};
[contentView addSubview:_buttonAction];

```

###pod 'RHRefreshControl', '~> 0.1.beta1'
git仓库：https://github.com/rathahin/RHRefreshControl
* 这个是刷新的控件

###pod 'UMengSocial'
主页是: http://dev.umeng.com/social/ios/quick-integration
* 友盟

###pod 'BLKFlexibleHeightBar'
git仓库:https://github.com/bryankeller/BLKFlexibleHeightBar
* BLKFlexibleHeightBar 可以让你创建可灵活收缩的头部。类似于我们在Facebook, Square Cash, 和 Safari iOS应用中看到的。 

###pod 'RateView', '~> 1.1'
git仓库：https://github.com/taruntyagi697/RateView
* 星星显示的等级，很好用， 可以自定义选中的颜色、未选中的颜色、星星的边框，显示的方式
```object
_starView = [RateView rateViewWithRating:5];
_starView.starSize = 15;
_starView.starFillColor = [UIColor colorWithRed:0.996 green:0.737 blue:0.039 alpha:1.000];
_starView.starNormalColor = [UIColor clearColor];
[contentView addSubview:_starView];
```




