//
//  DemoCell.m
//  AutoLayout进阶(五)UITableViewCell自动高度
//
//  Created by zhuxiaohui on 2017/11/22.
//  Copyright © 2017年 com.it7090. All rights reserved.
//

#import "DemoCell.h"
#import "UIImageView+WebCache.h"

@interface DemoCell()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UILabel *timeLab;
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UILabel *contentLab;
@property (weak, nonatomic) IBOutlet UILabel *commentLab;
@property (weak, nonatomic) IBOutlet UILabel *praiseLab;

@end

@implementation DemoCell

- (void)awakeFromNib {
    [super awakeFromNib];

    // Initialization code
}

-(void)setModel:(DemoModel *)model{
    _model = model;
    
    [_iconView sd_setImageWithURL:[NSURL URLWithString:model.icon]];
    _nameLab.text = model.name;
    _timeLab.text = model.update_time;
    _contentLab.text = model.brief;
    _titleLab.text = model.title;
    _commentLab.text = [NSString stringWithFormat:@"%ld评论",model.comment];
    _praiseLab.text = [NSString stringWithFormat:@"%ld赞",model.praise];
    
    
    for (int i = 0; i<3; i++) {
        UIImageView *imgView = [self viewWithTag:10+i];
        imgView.image = nil;
    }
    for (int i = 0; i<model.images.count; i++) {
        UIImageView *imgView = [self viewWithTag:10+i];
        [imgView sd_setImageWithURL:[NSURL URLWithString:model.images[i]]];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
