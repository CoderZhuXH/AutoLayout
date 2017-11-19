//
//  ViewController.m
//  AutoLayout进阶(一)Aspect Ratio
//
//  Created by zhuxiaohui on 2017/11/18.
//  Copyright © 2017年 com.it7090. All rights reserved.
//  https://github.com/CoderZhuXH/AutoLayout

#import "ViewController.h"

 static CGFloat changeValue = -18;//记录变化值

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imgViewWidth;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(action) userInfo:nil repeats:YES];
}

-(void)action{
    _imgViewWidth.constant += changeValue;
    if(_imgViewWidth.constant<=150){//最小宽度
        changeValue = 18;
    }else if(_imgViewWidth.constant>320){//最大宽度
        changeValue = -18;;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
