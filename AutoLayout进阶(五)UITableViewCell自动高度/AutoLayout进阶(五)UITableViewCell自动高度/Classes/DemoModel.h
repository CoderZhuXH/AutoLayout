//
//  DemoModel.h
//  AutoLayout进阶(五)UITableViewCell自动高度
//
//  Created by zhuxiaohui on 2017/11/27.
//  Copyright © 2017年 com.it7090. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoModel : NSObject
@property (nonatomic, copy) NSString *brief;
@property (nonatomic, copy) NSString *update_time;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *cate_name;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, assign) NSInteger praise;
@property (nonatomic, assign) NSInteger comment;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray *images;
@end
