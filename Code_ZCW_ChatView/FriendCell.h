//
//  FriendCell.h
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/14.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FriendModel.h"

@interface FriendCell : UITableViewCell

@property (nonatomic , strong)FriendModel *model;

@property (nonatomic , strong)UIImageView *avator;
@property (nonatomic , strong)UILabel *name;


@end
