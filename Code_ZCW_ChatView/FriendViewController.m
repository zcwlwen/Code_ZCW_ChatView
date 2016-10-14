//
//  FriendViewController.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/12.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "FriendViewController.h"
#import "FriendCell.h"
#import "FriendModel.h"
#import <Masonry.h>

#import "ZCWHttpTool.h"

@interface FriendViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic) bool isFriendOrAll;//通过这个值去判断点击的是好友还是全部

@property (nonatomic , strong)UITableView *mainTableView;

@property (nonatomic , strong)NSMutableArray *dataArray;

@property (nonatomic , strong)FriendCell *cell;
@property (nonatomic , strong)FriendModel *model;


@end

@implementation FriendViewController

- (NSMutableArray *)dataArray1
{
    if (!_dataArray)
    {
        self.dataArray = [NSMutableArray array];
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self creatSegmentedControl];
    [self setUI];
    [self getFriendsList];
}

#pragma mark - 创建UI
- (void)setUI{
    WS(weakSelf);
    _mainTableView = [[UITableView alloc]init];
    
    _mainTableView.delegate = self;
    _mainTableView.dataSource = self;
    [self.view addSubview:_mainTableView];
    
    [_mainTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view).with.offset(0);
        make.left.equalTo(weakSelf.view).with.offset(0);
        make.bottom.equalTo(weakSelf.view).with.offset(0);
        make.right.equalTo(weakSelf.view).with.offset(0);
    }];
}

#pragma mark - 获取好友列表
- (void)getFriendsList{
    
    NSDictionary *params = @{
                             @"userId":@"1",
                             };
    NSString *url = @"http://121.42.187.66/coolchat/friends";
    [ZCWHttpTool postWithUrlString:url parameters:params success:^(id data) {
        NSArray *array = [[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil] objectForKey:@"friends"];
        for (NSDictionary *infoDic in array) {
             _model = [[FriendModel alloc]initWithDictionary:infoDic];
            [self.dataArray1 addObject:_model];
        }
        [self.mainTableView reloadData];
        
    } failure:^(NSError *error) {
        ZCWLog(@"网络异常");
    }];
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
#pragma mark - UISegmentedControl的点击事件处理
- (void)didClickSegmentedControlAction{
    _isFriendOrAll = !_isFriendOrAll;
    if (_isFriendOrAll) {
        ZCWLog(@"好友");
    }else{
        ZCWLog(@"全部");
    }
}
#pragma mark - TableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  60;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 1 初始化Cell
    // 1.1 设置Cell的重用标识
    static NSString *ID = @"cell";
    // 1.2 去缓存池中取Cell
    _cell = [tableView dequeueReusableCellWithIdentifier:ID];
    // 1.3 若取不到便创建一个带重用标识的Cell
    if (_cell == nil) {
        _cell  = [[FriendCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        _cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    _cell.model = _dataArray[indexPath.row];
//    cell.detailTextLabel.text = _model.
    return _cell;
    
}




@end
