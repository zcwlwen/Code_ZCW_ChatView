//
//  FriendModel.h
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/14.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FriendModel : NSObject

@property (nonatomic , copy)NSString *userId;
@property (nonatomic , copy)NSString *name;
@property (nonatomic , copy)NSString *avatar;
@property (nonatomic , copy)NSString *sex;

- (id)initWithDictionary:(NSDictionary *)dict;

@end
