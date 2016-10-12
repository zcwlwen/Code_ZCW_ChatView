//
//  YeeCallViewController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/12.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "YeeCallViewController.h"

@interface YeeCallViewController ()

@end

@implementation YeeCallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"一块";
    self.view.backgroundColor = [UIColor whiteColor];
    [self addBarButton];
}


#pragma mark - 添加右上角button
- (void)addBarButton{
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]init];
    [barBtn setImage:[UIImage imageNamed:@"ic_group_contact_barBtnAdd_normal"]];
    barBtn.target = self;
    barBtn.action = @selector(addNewChat);
    barBtn.tintColor = [UIColor blackColor];
    self.navigationItem.rightBarButtonItem = barBtn;
}
- (void)addNewChat{
    //添加群组操作
    ZCWLog(@"11");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
