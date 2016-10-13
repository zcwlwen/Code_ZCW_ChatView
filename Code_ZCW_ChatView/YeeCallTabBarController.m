//
//  YeeCallTabBarController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/12.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "YeeCallTabBarController.h"
#import "YeeCallNavigationController.h"

#import "YeeCallViewController.h"
#import "FriendViewController.h"
#import "GroupViewController.h"
#import "MeViewController.h"

@interface YeeCallTabBarController ()

@end

@implementation YeeCallTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UITabBar appearance].translucent = NO;
    self.tabBar.tintColor = kYellow;//设置TabBar选中颜色
    [self setAllChildViewController];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setAllChildViewController{
    YeeCallViewController *yeeCallVC = [[YeeCallViewController alloc]init];
    [self setUpOneChildViewController:yeeCallVC image:[UIImage imageNamed:@"ic_tab_yeecall_normal"] imageSelected:[UIImage imageNamed:@"ic_tab_yeecall_selected"]title:@"一块"];
    FriendViewController *friendVC = [[FriendViewController alloc]init];
    [self setUpOneChildViewController:friendVC image:[UIImage imageNamed:@"ic_tab_contacts_normal"] imageSelected:[UIImage imageNamed:@"ic_tab_contacts_selected"]title:@"好友"];
    GroupViewController *GroupVC = [[GroupViewController alloc]init];
    [self setUpOneChildViewController:GroupVC image:[UIImage imageNamed:@"ic_tab_group_normal"] imageSelected:[UIImage imageNamed:@"ic_tab_group_selected"]title:@"群组"];
    MeViewController *meVC = [[MeViewController alloc]init];
    [self setUpOneChildViewController:meVC image:[UIImage imageNamed:@"ic_tab_me_normal"] imageSelected:[UIImage imageNamed:@"ic_tab_me_selected"]title:@"我"];
    
}

- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image imageSelected:(UIImage *)imageSelected title:(NSString *)title {
    
    YeeCallNavigationController *navC = [[YeeCallNavigationController alloc]initWithRootViewController:viewController];
  
    navC.tabBarItem.image = image;
    navC.tabBarItem.selectedImage = imageSelected;
    navC.title = title;
    
    [self addChildViewController:navC];
}

@end
