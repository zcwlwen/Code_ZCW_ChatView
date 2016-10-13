//
//  WelcomeViewController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/13.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "WelcomeViewController.h"
#import <Masonry.h>
#import "LoginViewController.h"

@interface WelcomeViewController ()

@property (nonatomic , strong)UIImageView *logoImage;
@property (nonatomic , strong)UIImageView *logoText;
@property (nonatomic , strong)UILabel *logoLabel;
@property (nonatomic , strong)UIButton *loginBtn;
@property (nonatomic , strong)UIButton *signupBtn;


@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUI];
    
}

#pragma mark - 创建UI
- (void)setUI{
    
    __weak typeof (self) weakSelf = self;
    _logoImage = [[UIImageView alloc]init];
    _logoImage.image = [UIImage imageNamed:@"ic_reg_s"];
    
    _logoText = [[UIImageView alloc]init];
    _logoText.image = [UIImage imageNamed:@"ic_reg_yeecall"];
    _logoText.contentMode = UIViewContentModeScaleAspectFit;
    
    _logoLabel = [[UILabel alloc]init];
    _logoLabel.textAlignment = NSTextAlignmentCenter;
    _logoLabel.font = [UIFont systemFontOfSize:16];
    _logoLabel.textColor = [UIColor lightGrayColor];
    _logoLabel.text = @"一块 · 超级电话";
    
    
    _signupBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [_signupBtn setTitle:@"注册" forState:UIControlStateNormal];
    [_signupBtn setTitleColor:[UIColor whiteColor]forState:UIControlStateNormal];
    _signupBtn.backgroundColor = kYellow;
    _signupBtn.layer.masksToBounds = YES;
    _signupBtn.layer.cornerRadius = 3;
    _signupBtn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [_signupBtn addTarget:self action:@selector(signUpEvent) forControlEvents:UIControlEventTouchUpInside];
    
    
    _loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [_loginBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    _loginBtn.tintColor = [UIColor lightGrayColor];
    _loginBtn.layer.masksToBounds = YES;
    _loginBtn.layer.cornerRadius = 3;
    _loginBtn.layer.borderColor = [[UIColor lightGrayColor]CGColor];
    _loginBtn.layer.borderWidth = 1.3;
    _loginBtn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [_loginBtn addTarget:self action:@selector(loginEvent) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:_logoImage];
    [self.view addSubview:_logoText];
    [self.view addSubview:_logoLabel];
    [self.view addSubview:_loginBtn];
    [self.view addSubview:_signupBtn];
    
    [_logoImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view).with.offset(kWindowH/7);
        make.centerX.mas_equalTo(weakSelf.view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(90, 90));
    }];
    
    [_logoText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_logoImage).with.offset(120);
        make.centerX.mas_equalTo(weakSelf.view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(90, 40));
        
    }];
    
    [_logoLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_logoText).with.offset(45);
        make.centerX.mas_equalTo(weakSelf.view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(200, 30));
        
    }];
    
    [_signupBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(weakSelf.view).with.offset(-60);
        make.left.equalTo(weakSelf.view).with.offset(20);
        make.size.mas_equalTo(CGSizeMake((kWindowW-50)/2, 45));
    }];
    
    [_loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(weakSelf.view).with.offset(-60);
        make.right.equalTo(weakSelf.view).with.offset(-20);
        make.size.mas_equalTo(CGSizeMake((kWindowW-50)/2, 45));
    }];
}
#pragma mark - 登录注册按钮的点击事件
- (void)signUpEvent{
    ZCWLog(@"SignUp");
}

-(void)loginEvent{
    LoginViewController *vc = [[LoginViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
//    [self.navigationController pushViewController:vc animated:YES];
    ZCWLog(@"Login");
}


@end
