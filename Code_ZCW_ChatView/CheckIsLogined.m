//
//  CheckIsLogined.m
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/11/1.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "CheckIsLogined.h"

@implementation CheckIsLogined

+(BOOL)checkIsLogin{
    
    
    NSUserDefaults *userInfo = [NSUserDefaults standardUserDefaults];
    NSString *userId = [userInfo objectForKey:@"userId"];
    if (userId.length == 0) {
        return NO;
    }else{
        return YES;
    }
}

+ (void)clearUserDefault{
    NSUserDefaults *userInfo = [NSUserDefaults standardUserDefaults];

    NSDictionary* dict = [userInfo dictionaryRepresentation];
    for(id key in dict) {
        [userInfo removeObjectForKey:key];
    }
    [userInfo synchronize];
}

@end
