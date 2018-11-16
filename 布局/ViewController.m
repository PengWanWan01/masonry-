//
//  ViewController.m
//  布局
//
//  Created by yutaozhao on 2018/11/16.
//  Copyright © 2018年 wait. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initWithUI];
}
- (void)initWithUI{
    UIView *bigView = [UIView new];
    bigView.backgroundColor = [UIColor redColor];
    bigView.layer.cornerRadius = 4;
    bigView.layer.masksToBounds = YES;
    [self.view addSubview:bigView];
    [bigView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100);
        make.bottom.mas_equalTo(-100);
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
    }];
    
    UIView *leftView = [UIView new];
    leftView.backgroundColor = [UIColor orangeColor];
    [bigView addSubview:leftView];
    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.left.mas_equalTo(10);
        make.height.mas_equalTo(20);
        make.width.mas_equalTo(bigView).multipliedBy(0.5).offset(-15);
//        make.edges.insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    
    UIView *rightView = [UIView new];
    rightView.backgroundColor = [UIColor blueColor];
    [bigView addSubview:rightView];
    [rightView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.right.mas_equalTo(-10);
//        make.width.mas_equalTo(bigView).multipliedBy(0.5).offset(-15);
        make.height.mas_equalTo(20);
        make.width.equalTo(bigView.mas_width).multipliedBy(0.5).offset(-15);
    }];
    UIView *bottomView = [UIView new];
    bottomView.backgroundColor = [UIColor blackColor];
    [bigView addSubview:bottomView];
    
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_offset(10);
        make.top.equalTo(leftView.mas_bottom).offset(30);
        make.width.mas_offset(200);
        make.height.mas_offset(100);
    }];
    
}


@end
