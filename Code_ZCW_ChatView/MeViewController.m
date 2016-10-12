//
//  MeViewController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/12.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "MeViewController.h"

@interface MeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic ,strong)UITableView *mainTableView;

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我";
    self.view.backgroundColor = [UIColor whiteColor];
    
}
- (void)creatTableView{
    
    _mainTableView = [[UITableView alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
