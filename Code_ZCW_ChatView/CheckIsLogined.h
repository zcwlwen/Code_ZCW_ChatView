//
//  CheckIsLogined.h
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/11/1.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CheckIsLogined : NSObject

@property (strong , nonatomic)NSUserDefaults *userInfo;

//检查是否登录
+ (BOOL)checkIsLogin;

//清空UserDefault
+ (void)clearUserDefault;

@end
