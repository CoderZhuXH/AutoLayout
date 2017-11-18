//
//  Demo1VC.m
//  AutoLayout
//
//  Created by zhuxiaohui on 2017/11/12.
//  Copyright © 2017年 com.it7090. All rights reserved.
//

#import "Demo1VC.h"

@interface Demo1VC ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelWidth;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation Demo1VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    _label.text = @"这次撞击产生的爆炸威力与 100 万亿吨 TNT 的爆炸量相当，大约相当于二战期间投掷在日本广岛的原子弹爆炸威力的 70 亿倍，强烈的撞击产生可怕的强大冲击波扫荡周围的一切。来自中国的古生物学和物理家黎阳 2009 年在耶鲁大学发表的论文引起了国际古生物学界的轰动，他和他的中国团队在 6534.83 万年前的希克苏伯陨石坑 K－T 线地层中发现了高浓度的稀有元素铱，其含量超过正常含量 232 倍";
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)slider:(UISlider *)sender {
    
    _labelWidth.constant = sender.value * [UIScreen mainScreen].bounds.size.width;
    
    
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
