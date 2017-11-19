//
//  ViewController.m
//  AutoLayout进阶(四)Content Hugging Priority和Content Compression Resistance Priority综合运用
//
//  Created by zhuxiaohui on 2017/11/19.
//  Copyright © 2017年 com.it7090. All rights reserved.
//  https://github.com/CoderZhuXH/AutoLayout

#import "ViewController.h"

static NSString *const NameText = @"长昵称这是一个很长的昵称";
static NSInteger changeLength = -1;//记录单次变化长度

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UILabel *timeLab;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _nameLab.text = NameText;
    _timeLab.text = @"一周以前";

    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(action) userInfo:nil repeats:YES];
}

-(void)action{
     /** 当前昵称 */
    NSString *name = [NameText substringToIndex:_nameLab.text.length+changeLength];
    NSLog(@"当前昵称:\n%@",name);
    
    _nameLab.text = name;//设置昵称
    
    if(_nameLab.text.length<=3){//最小宽度
        changeLength = 1;
    }else if(_nameLab.text.length==NameText.length){//最大宽度
        changeLength = -1;;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
