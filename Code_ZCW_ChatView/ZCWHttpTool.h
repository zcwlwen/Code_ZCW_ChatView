//
//  ZCWHttpTool.h
//  Code_ZCW_ChatView
//
//  Created by 张朝伟 on 2016/10/14.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

@interface ZCWHttpTool : NSObject

//宏定义成功block 回调成功后得到的信息
typedef void (^HttpSuccess)(id data);
//宏定义失败block 回调失败信息
typedef void (^HttpFailure)(NSError *error);


//get请求
+(void)getWithUrlString:(NSString *)urlString success:(HttpSuccess)success failure:(HttpFailure)failure;


//post请求
+(void)postWithUrlString:(NSString *)urlString parameters:(NSDictionary *)parameters success:(HttpSuccess)success failure:(HttpFailure)failure;

@end
