//
//  WhiteBaseViewController.m
//  JJWhiteDemo
//
//  Created by mude on 2019/3/12.
//  Copyright © 2019 mude. All rights reserved.
//

#import "WhiteBaseViewController.h"

@interface WhiteBaseViewController ()<WhiteCommonCallbackDelegate>

@end

@implementation WhiteBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
}

- (void)setupViews
{
#warning WhiteboardView 初始化注意事项：
    /**
     请提前将 WhiteBoardView 添加至视图栈中（生成 whiteSDK 前）。否则 iOS 12 真机无法执行正常执行sdk代码。
     */
//    self.boardView = [[WhiteBoardView alloc] init];
//    [self.view addSubview:self.boardView];
    /*
     需要手动兼容 iOS10 及其以下。
     FIX UIScrollView 自动偏移的问题
     WhiteBoardView 内部有 UIScrollView，在 iOS 10及其以下时，如果 WhiteBoardView 是当前视图栈中第一个的话，会出现内容错位。
     iOS 11 及其以上已做处理。
     */
    if (@available(iOS 11, *)) {
    } else {
        //可以参考此处处理。
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
//    [self.boardView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.mas_topLayoutGuideBottom);
//        make.left.bottom.right.equalTo(self.view);
//    }];
}

#pragma mark - CallbackDelegate
- (id<WhiteCommonCallbackDelegate>)commonDelegate
{
    if (!_commonDelegate) {
        _commonDelegate = self;
    }
    return _commonDelegate;
}

@end
