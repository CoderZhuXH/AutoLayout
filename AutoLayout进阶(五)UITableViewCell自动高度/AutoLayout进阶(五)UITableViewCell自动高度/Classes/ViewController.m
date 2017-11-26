//
//  ViewController.m
//  AutoLayout进阶(五)UITableViewCell自动高度
//
//  Created by zhuxiaohui on 2017/11/22.
//  Copyright © 2017年 com.it7090. All rights reserved.
//

#import "ViewController.h"
#import "DemoModel.h"
#import "YYModel.h"
#import "DemoCell.h"

static NSString *const id_DemoCell = @"DemoCell";

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    [self.tableView registerNib:[UINib nibWithNibName:id_DemoCell bundle:nil] forCellReuseIdentifier:id_DemoCell];
    
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark - tableView
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DemoCell *cell = [tableView dequeueReusableCellWithIdentifier:id_DemoCell];
    if (!cell) {
        cell = [[DemoCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id_DemoCell];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    DemoModel *model = self.dataArray[indexPath.row];
    cell.model = model;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
}
#pragma mark - lazy
-(UITableView *)tableView{
    if(!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.estimatedRowHeight = 250;
        _tableView.rowHeight = UITableViewAutomaticDimension;
    }
    return _tableView;
}
-(NSArray *)dataArray{
    if(!_dataArray){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"demo" ofType:@"json"];
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:0 error:nil];
        _dataArray = [NSArray yy_modelArrayWithClass:[DemoModel class] json:json[@"data"]];
    }
    return _dataArray;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
