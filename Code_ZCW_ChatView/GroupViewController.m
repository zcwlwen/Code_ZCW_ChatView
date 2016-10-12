//
//  GroupViewController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/12.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "GroupViewController.h"

@interface GroupViewController ()

@end

@implementation GroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"群组";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self addBarButton];
}
#pragma mark - 添加右上角button
- (void)addBarButton{
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]init];
    [barBtn setImage:[UIImage imageNamed:@"ic_group_contact_barBtn_normal"]];
    barBtn.target = self;
    barBtn.action = @selector(addGroup);
    barBtn.tintColor = [UIColor blackColor];
    self.navigationItem.rightBarButtonItem = barBtn;
}
- (void)addGroup{
    //添加群组操作
    ZCWLog(@"11");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
