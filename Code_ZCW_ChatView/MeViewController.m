//
//  MeViewController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/12.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "MeViewController.h"
#import <Masonry.h>

@interface MeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic , strong)UITableView *mainTableView;

@property (nonatomic , strong)UIImageView *avator;
@property (nonatomic , strong)UILabel *name;
@property (nonatomic , strong)UILabel *number;



@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我";
//    self.view.backgroundColor = [UIColor whiteColor];
    [self creatTableView];
}

#pragma mark - 创建TableView
- (void)creatTableView{
    
    __weak typeof (self) weakSelf = self;
    _mainTableView = [[UITableView alloc]init];
//    _mainTableView.backgroundColor = [UIColor redColor];
    _mainTableView.dataSource = self;
    _mainTableView.delegate = self;
    [self.view addSubview:_mainTableView];
    [_mainTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf.view).with.insets(UIEdgeInsetsMake(0,0,0,0));
    }];
}


- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 80;
    }
    return  55;
}
/**
 *  返回有多少组的代理方法
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else if (section == 1){
        return 2;
    }else if (section == 2){
        return 3;
    }else{
        return 1;
    }
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 1 初始化Cell
    // 1.1 设置Cell的重用标识
    static NSString *ID = @"cell";
    // 1.2 去缓存池中取Cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    // 1.3 若取不到便创建一个带重用标识的Cell
    
    
    if (cell == nil) {
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    if (indexPath.section == 0) {
        _avator = [[UIImageView alloc]init];
        _avator.image = [UIImage imageNamed:@"walkthrough_pic_photo&doodle_intro3"];
        _avator.layer.masksToBounds = YES;
        _avator.layer.cornerRadius = 25;
        
        _name = [[UILabel alloc]init];
        _name.text = @"张朝伟";
        _name.font = [UIFont boldSystemFontOfSize:16];
        
        _number = [[UILabel alloc]init];
        _number.text = @"+8615757126427";
        _number.font = [UIFont systemFontOfSize:12];
        _number.textColor = [UIColor grayColor];
        
        [cell.contentView addSubview:_avator];
        [cell.contentView addSubview:_name];
        [cell.contentView addSubview:_number];
        
        [_avator mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(cell.contentView).with.offset(15);
            make.left.equalTo(cell.contentView).with.offset(15);
            make.bottom.equalTo(cell.contentView).with.offset(-15);
            make.size.mas_equalTo(CGSizeMake(50, 50));
        }];
        
        [_name mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(cell.contentView).with.offset(15);
            make.left.equalTo(cell.contentView).with.offset(80);
            make.right.equalTo(cell.contentView).with.offset(-20);
            make.size.height.mas_equalTo(30);
        }];
        
        [_number mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_name).with.offset(30);
            make.left.equalTo(cell.contentView).with.offset(80);
            make.bottom.equalTo(cell.contentView).with.offset(-15);
            make.right.equalTo(cell.contentView).with.offset(-20);
        }];
    }else if (indexPath.section == 1){
        if (indexPath.row == 0) {
            cell.imageView.image = [UIImage imageNamed:@"reminder_my_reminder"];
            cell.textLabel.text = @"我的日程";
            cell.textLabel.font = [UIFont systemFontOfSize:16];
        }else{
            cell.imageView.image = [UIImage imageNamed:@"yeecall_self_settings_stickers"];
            cell.textLabel.text = @"表情商店";
            cell.textLabel.font = [UIFont systemFontOfSize:16];
        }
    }else if (indexPath.section == 2){
        if (indexPath.row == 0) {
            cell.imageView.image = [UIImage imageNamed:@"ic_me_share"];
            cell.textLabel.text = @"推荐一块";
            cell.textLabel.font = [UIFont systemFontOfSize:16];
            
        }else if (indexPath.row == 1){
            cell.imageView.image = [UIImage imageNamed:@"icon_me_rate"];
            cell.textLabel.text = @"到App Store给我们好评";
            cell.textLabel.font = [UIFont systemFontOfSize:16];
        }else{
            cell.imageView.image = [UIImage imageNamed:@"ic_me_feedback"];
            cell.textLabel.text = @"反馈";
            cell.textLabel.font = [UIFont systemFontOfSize:16];
        }
    }else if (indexPath.section == 3){
        cell.imageView.image = [UIImage imageNamed:@"ic_me_setting"];
        cell.textLabel.text = @"设置";
        cell.textLabel.font = [UIFont systemFontOfSize:16];
    }else{
        cell.imageView.image = [UIImage imageNamed:@"ic_me_about"];
        cell.textLabel.text = @"关于";
        cell.textLabel.font = [UIFont systemFontOfSize:16];
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
