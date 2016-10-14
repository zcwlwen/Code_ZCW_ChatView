//
//  FriendCell.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/14.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "FriendCell.h"
#import <Masonry.h>
#import <SDWebImage/UIImageView+WebCache.h>

@implementation FriendCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.avator];
        [self.contentView addSubview:self.name];
    }
    return self;
}
- (UIImageView *)avator{
    if (!_avator) {
        _avator = [[UIImageView alloc]init];
    }
    return _avator;
}
- (UILabel *)name{
    if (!_name) {
        _name = [[UILabel alloc]init];
        
    }
    return _name;
}
- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    _avator.frame = CGRectMake(10, 10, 40, 40);
    _name.frame = CGRectMake(60, 10, 100, 40);
    
//    WS(weakSelf);
//    [_avator mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(weakSelf.contentView).with.offset(10);
//        make.left.equalTo(weakSelf.contentView).with.offset(10);
////        make.bottom.equalTo(weakSelf.contentView).with.offset(-10);
////        make.width.mas_equalTo(60);
//        make.size.mas_equalTo(CGSizeMake(60, 60));
//    }];
//    
//    [_name mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(weakSelf.contentView).width.offset(10);
//        make.left.equalTo(_avator).with.offset(60);
//        make.bottom.equalTo(weakSelf.contentView).with.offset(-10);
////        make.right.equalTo(weakSelf.contentView).with.offset(-20);
//        make.size.mas_equalTo(CGSizeMake(100, 60));
//    }];
    
}

- (void)setModel:(FriendModel *)model{
    _model = model;
    NSString *urlTemp = _model.avatar;
    NSString *url = [urlTemp stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    
//    ZCWLog(@"%@",url);
//    
    [_avator sd_setImageWithURL:[NSURL URLWithString:url]
                   placeholderImage:[UIImage imageNamed:@"btn_call_accept_pressed"]];
    
//    [_avator sd_setImageWithURL:[NSURL URLWithString:@"http://obxsh37d1.bkt.clouddn.com/errno-404"]
//               placeholderImage:[UIImage imageNamed:@"btn_call_accept_pressed"]];
    _name.text = _model.name;

}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
