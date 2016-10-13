//
//  GroupCollectionViewCell.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/13.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "GroupCollectionViewCell.h"
#import <Masonry.h>

@implementation GroupCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        
        __weak typeof (self) weakSelf = self;
        _groupImage = [[UIImageView alloc]init];
        _groupImage.backgroundColor = [UIColor whiteColor];
        _groupName.contentMode = UIViewContentModeScaleAspectFill;
        [self.contentView addSubview:_groupImage];
        
        [_groupImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf.contentView).with.offset(0);
            make.left.equalTo(weakSelf.contentView).with.offset(0);
            make.right.equalTo(weakSelf.contentView).with.offset(0);
            make.height.mas_equalTo(weakSelf.contentView.frame.size.height/3*2);
        }];
        
        
        _groupName = [[UILabel alloc]init];
        _groupName.textAlignment = NSTextAlignmentCenter;
        _groupName.font = [UIFont systemFontOfSize:12];
        
        
        [self.contentView addSubview:_groupName];
        
        [_groupName mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(weakSelf.contentView).with.offset(0);
            make.left.equalTo(weakSelf.contentView).with.offset(0);
            make.right.equalTo(weakSelf.contentView).with.offset(0);
            make.height.mas_equalTo(weakSelf.contentView.frame.size.height/3);
        }];
        

    }
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.contentView.layer.masksToBounds = YES;
    self.contentView.layer.cornerRadius = 5;
    
//    self.layer.cornerRadius = 4;	//在self.layer上设置阴影
    self.layer.shadowColor = [UIColor darkGrayColor].CGColor;
    self.layer.masksToBounds = NO;
    self.layer.shadowOffset = CGSizeMake(0.2f, 0.2f);
    self.layer.shadowRadius = 5;
    self.layer.shadowOpacity = 0.35f;
    self.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:5].CGPath;
}

@end
