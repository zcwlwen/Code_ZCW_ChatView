//
//  LoginViewController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/13.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "LoginViewController.h"
#import <Masonry.h>

@interface LoginViewController ()

@property (nonatomic , strong)UIButton *backBtn;
@property (nonatomic , strong)UILabel *loginTitle;
@property (nonatomic , strong)UILabel *country;
@property (nonatomic , strong)UILabel *countryValue;
@property (nonatomic , strong)UILabel *numberLabel;
@property (nonatomic , strong)UILabel *passwordLabel;
@property (nonatomic , strong)UITextField *numberTextfiled;
@property (nonatomic , strong)UITextField *passwordTextfiled;
@property (nonatomic , strong)UIButton *loginBtn;

@property (nonatomic , strong)UIView *countryLine;
@property (nonatomic , strong)UIView *numberLine;
@property (nonatomic , strong)UIView *passwordLine;


@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUI];
    
    // Do any additional setup after loading the view.
}

- (void)setUI{
    
     __weak typeof (self) weakSelf = self;
    
    _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_backBtn setImage:[UIImage imageNamed:@"ic_navbar_back_n"] forState:UIControlStateNormal];
    [_backBtn setTitle:@"上一步" forState:UIControlStateNormal];
    [_backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    _loginTitle = [[UILabel alloc]init];
    _loginTitle.text = @"登录";
    _loginTitle.textAlignment = NSTextAlignmentCenter;
    _loginTitle.font = [UIFont systemFontOfSize:26];
    _loginTitle.textColor = kYellow;
    
    _country = [[UILabel alloc]init];
    _country.text = @"国家/地区";
    _country.textColor = [UIColor darkGrayColor];
    _country.textAlignment = NSTextAlignmentRight;
    _country.font = [UIFont systemFontOfSize:14];
    
    
    _countryValue = [[UILabel alloc]init];
    _countryValue.text = @"中国";
    _countryValue.textColor = [UIColor blackColor];
    _countryValue.textAlignment = NSTextAlignmentLeft;
    _countryValue.font = [UIFont systemFontOfSize:14];
    
    
    _numberLabel = [[UILabel alloc]init];
    _numberLabel.text  = @"+86";
    _numberLabel.textColor = [UIColor darkGrayColor];
    _numberLabel.textAlignment = NSTextAlignmentRight;
    _numberLabel.font = [UIFont systemFontOfSize:14];
    
    
    _numberTextfiled = [[UITextField alloc]init];
    _numberTextfiled.font = [UIFont systemFontOfSize:14];
    _numberTextfiled.placeholder = @"请输入你的手机号码";
    
    _passwordLabel = [[UILabel alloc]init];
    _passwordLabel.text = @"密码";
    _passwordLabel.textColor = [UIColor darkGrayColor];
    _passwordLabel.textAlignment = NSTextAlignmentRight;
    _passwordLabel.font = [UIFont systemFontOfSize:14];
    
    _passwordTextfiled = [[UITextField alloc]init];
    _passwordTextfiled.font = [UIFont systemFontOfSize:14];
    _passwordTextfiled.placeholder = @"输入至少6位密码";
    
    _loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [_loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _loginBtn.layer.masksToBounds = YES;
    _loginBtn.layer.cornerRadius = 3;
    _loginBtn.backgroundColor = kYellow;
    
    
    _countryLine = [[UIView alloc]init];
    _countryLine.backgroundColor = [UIColor darkGrayColor];
    _countryLine.alpha = 0.1;
    
    _numberLine = [[UIView alloc]init];
    _numberLine.backgroundColor = [UIColor darkGrayColor];
    _numberLine.alpha = 0.1;
    
    _passwordLine = [[UIView alloc]init];
    _passwordLine.backgroundColor = [UIColor darkGrayColor];
    _passwordLine.alpha = 0.1;
    
    
    [self.view addSubview:_backBtn];
    [self.view addSubview:_loginTitle];
    [self.view addSubview:_country];
    [self.view addSubview:_countryValue];
    [self.view addSubview:_numberLabel];
    [self.view addSubview:_numberTextfiled];
    [self.view addSubview:_passwordLabel];
    [self.view addSubview:_passwordTextfiled];
    [self.view addSubview:_loginBtn];
    
    [self.view addSubview:_countryLine];
    [self.view addSubview:_numberLine];
    [self.view addSubview:_passwordLine];
    
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view).with.offset(20);
        make.left.equalTo(weakSelf.view).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(100, 40));
    }];
    
    [_loginTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view).with.offset(60);
        make.left.equalTo(weakSelf.view).with.offset(0);
        make.right.equalTo(weakSelf.view).with.offset(0);
        make.height.mas_equalTo(60);
    }];
    
    [_country mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_loginTitle).with.offset(80);
        make.left.equalTo(weakSelf.view).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(kWindowW/4,40));
    }];
    
    [_countryLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_country).with.offset(40);
        make.left.equalTo(weakSelf.view).with.offset(20);
        make.right.equalTo(weakSelf.view).with.offset(-20);
        make.height.mas_equalTo(1);
    }];
    
    [_countryValue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_loginTitle).with.offset(80);
        make.right.equalTo(weakSelf.view).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(kWindowW/4*3-20, 40));

    }];
    
    [_numberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_country).with.offset(40);
        make.left.equalTo(weakSelf.view).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(kWindowW/4,40));
    }];
    
    [_numberTextfiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_countryValue).with.offset(40);
        make.right.equalTo(weakSelf.view).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(kWindowW/4*3-20,40));
        
    }];
    
    [_numberLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_numberLabel).with.offset(40);
        make.left.equalTo(weakSelf.view).with.offset(20);
        make.right.equalTo(weakSelf.view).with.offset(-20);
        make.height.mas_equalTo(1);
    }];
    
    [_passwordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_numberLabel).with.offset(40);
        make.left.equalTo(weakSelf.view).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(kWindowW/4, 40));
        
    }];
    
    [_passwordTextfiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_numberTextfiled).with.offset(40);
        make.right.equalTo(weakSelf.view).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(kWindowW/4*3-20, 40));
    }];
    
    [_passwordLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_passwordLabel).with.offset(40);
        make.left.equalTo(weakSelf.view).with.offset(20);
        make.right.equalTo(weakSelf.view).with.offset(-20);
        make.height.mas_equalTo(1);
    }];
    
    [_loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_passwordLabel).with.offset(60);
        make.left.equalTo(weakSelf.view).with.offset(20);
        make.right.equalTo(weakSelf.view).with.offset(-20);
        make.height.mas_equalTo(40);
        
    }];
    
    
}


@end
