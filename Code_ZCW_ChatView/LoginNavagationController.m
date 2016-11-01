//
//  LoginNavagationController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/20.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "LoginNavagationController.h"
#import "WelcomeViewController.h"
@interface LoginNavagationController ()

@end

@implementation LoginNavagationController

- (void)viewDidLoad {
    [super viewDidLoad];
    WelcomeViewController *vc = [[WelcomeViewController alloc]init];
    LoginNavagationController *loginNaVC = [[LoginNavagationController alloc]initWithRootViewController:vc];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
