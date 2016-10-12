//
//  FriendViewController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/12.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "FriendViewController.h"

@interface FriendViewController ()

@property (nonatomic) bool isFriendOrAll;

@end

@implementation FriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self creatSegmentedControl];
    
}
#pragma mark - 添加UISegmentedControl
- (void)creatSegmentedControl{
    NSArray *array = [NSArray arrayWithObjects:@"好友",@"全部", nil];
    UISegmentedControl *segmentedController = [[UISegmentedControl alloc] initWithItems:array];
    segmentedController.selectedSegmentIndex = 0;
    segmentedController.tintColor = kYellow;
    [segmentedController addTarget:self action:@selector(didClickSegmentedControlAction)forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segmentedController;
    _isFriendOrAll = true;
    // Do any additional setup after loading the view.
    if (_isFriendOrAll) {
        ZCWLog(@"好友");
    }else{
        ZCWLog(@"全部");
    }
}
//UISegmentedControl的点击事件处理
- (void)didClickSegmentedControlAction{
    _isFriendOrAll = !_isFriendOrAll;
    if (_isFriendOrAll) {
        ZCWLog(@"好友");
    }else{
        ZCWLog(@"全部");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
