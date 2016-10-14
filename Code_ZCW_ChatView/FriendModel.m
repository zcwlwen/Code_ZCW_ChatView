//
//  FriendModel.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/14.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "FriendModel.h"

@implementation FriendModel

- (id)initWithDictionary:(NSDictionary *)dict{
    self = [super init];
    //    [self setValuesForKeysWithDictionary:dict];
    if (self) {
        self.userId = dict[@"userId"];
        self.name  = dict[@"name"];
        self.avatar  = dict[@"avatar"];
        self.sex   = dict[@"sex"];
    }
    return self;
    
}

@end
