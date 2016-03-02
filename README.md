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
###pod 'TPKeyboardAvoiding'
git仓库 : https://github.com/michaeltyson/TPKeyboardAvoiding
* 让输入框随键盘上浮, 防止键盘遮挡输入框
```object
- (void)loadView {
    TPKeyboardAvoidingScrollView *VC = [[TPKeyboardAvoidingScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view = VC;
}
```
###pod 'DACircularProgress'
git 仓库: https://github.com/danielamitay/DACircularProgress
* 环形进度条
```object
    DACircularProgressView *circularView = [[DACircularProgressView alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
    circularView.trackTintColor = [UIColor redColor];           // 没走的
    circularView.progressTintColor = [UIColor yellowColor];     // 走过的
    circularView.innerTintColor = [UIColor whiteColor];         // 中心的
    circularView.roundedCorners = 2;                            // 进度条圆角
    circularView.thicknessRatio = 0.1;                          // 粗细
    circularView.clockwiseProgress = 1;                         // 时针方向

    [self.view addSubview:circularView];
    
    [circularView setProgress:0.3 animated:YES];
```
###iOSMp4Camera
网址: http://stackoverflow.com/questions/8474517/mov-to-mp4-video-conversion-iphone-programmatically
* iOS录视频转MP4
自写的核心代码
```object
void coverToMPEG4(NSURL *path, void(^finished)(NSURL*)) {
    NSString *_mp4Path = nil;
    AVURLAsset *avAsset = [AVURLAsset URLAssetWithURL:path options:nil];
    NSArray *compatiblePresets = [AVAssetExportSession exportPresetsCompatibleWithAsset:avAsset];
    if ([compatiblePresets containsObject:AVAssetExportPreset640x480]) {
        AVAssetExportSession *exportSession = [[AVAssetExportSession alloc ] initWithAsset:avAsset presetName:AVAssetExportPreset640x480];
        
        NSDateFormatter* formater = [[NSDateFormatter alloc] init];
        [formater setDateFormat:@"yyyy-MM-dd-HH:mm:ss"];
        NSString *path = [NSString stringWithFormat:@"/%@.mp4", [formater stringFromDate:[NSDate date]]];
        _mp4Path = [NSTemporaryDirectory() stringByAppendingPathComponent:path];
        exportSession.outputURL = [NSURL fileURLWithPath:_mp4Path];
        exportSession.shouldOptimizeForNetworkUse = true;
        exportSession.outputFileType = AVFileTypeMPEG4;
        NSURL *url = [NSURL fileURLWithPath:_mp4Path];
        [exportSession exportAsynchronouslyWithCompletionHandler:^{
            switch ([exportSession status]) {
                case AVAssetExportSessionStatusCompleted:
                    finished(url);
                    break;
                default:
                    finished(nil);
                    break;
            }
        }];
    }
}
```
###网易新闻 iOS 版中用的18个开源组件
##（先留着， 有时间再整理）

1、AFNetworking
AFNetworking 采用 NSURLConnection + NSOperation, 主要方便与服务端 API 进行数据交换, 操作简单, 功能强大, 现在许多人都用它取代 ASIHTTPRequest

2、Apple Reachability
网络监测，可以参考下这篇文章iOS网络监测如何区分2、3、4G?

3、DOUAudioStreamer
豆瓣的开源软件，DOUAudioStreamer 是 iOS 和 Mac 的基于核心音频的流媒体音频播放器

4、FXBlurView
iOS 模糊背景类库, 可以方便的根据底层显示的状态生成模糊效果

5、GTMNSString+HTML
谷歌开源的用于过滤HTML标签

6、iCarousel
iCarousel是一个类，它继承于UIView。用于简化实现各种类型的旋转木马(分页滚动视图）

7、JDStatusBarNotification
在状态栏顶部显示通知。可以自定义颜色字体以及动画。支持进度显示以及显示状态指示器

8、libwebp
可用于webp的移植，具体还是去看git吧

9、masonry
一个轻量级的布局框架, 同时支持 iOS 和 Mac OS X, 语法优雅, 帮助开发者快速适配不同分辨率的 iOS 设备

10、MGTemplateEngine
MGTemplateEngine比较象 PHP 中的 Smarty、FreeMarker 和 Django的模版引擎，是一个轻量级的引擎，简单好用。只要设置很多不同的HMTL模版，就能轻松的实现一个View多种内容格式的显示，对于不熟悉HTML或者减轻 工作量而言，把这些工作让设计分担一下还是很好的，也比较容易实现设计想要的效果。

11、NJKWebViewProgress
NJKWebViewProgress 是一个 UIWebView 的进度条接口库,UIWebView 本身是不提供进度条的。

12、pop
Facebook 开源的iOS 动画库, 集合了很多动画效果

13、RegexKitLite
用来处理正则表达式

14、SDWebImage
常用于对从服务器端接受到的图片进行缓存, 是 UIImageView 的扩展, 应用起来比较简单

15、SSKeychain
SSKeyChains对苹果安全框架API进行了简单封装,支持对存储在钥匙串中密码、账户进行访问,包括读取、删除和设置

16、TTTAttributedLabel
UILabel 的替代品, 使 iOS 上的 Label 功能更加丰富, 可支持链接植入等功能

17、wax
Wax 就是使用 Lua 脚本语言来编写 ios原生应用 的一个框架,它把Lua脚本语言和原生 Objective-C 应用编程接口(API)结合起来

18、ZipArchive
可用于压缩和解压缩文件

###pod 'IDMPhotoBrowser'

git仓库：https://github.com/ideaismobile/IDMPhotoBrowser
* 图片预览

###pod 'AsyncDisplayKit'

git仓库： https://github.com/facebook/AsyncDisplayKit.git
* 这个是UI类的控件， 来自faceBook。显示界面都是异步重绘，可大幅提高流畅性。————每秒60帧

###pod 'DZNEmptyDataSet'

git仓库： https://github.com/dzenbot/DZNEmptyDataSet.git
* 在页面无数据的时候显示占位的页面， UIScrollView 的分类，比较好用

###pod 'MGSwipeTableCell' 
git仓库：https://github.com/MortimerGoro/MGSwipeTableCell.git
* TableViewCell 出现滑动标签的时候用，比如滑动出现删除

###pod 'PNChart'
git仓库：https://github.com/kevinzhow/PNChart.git
* 图表制作，很方便








