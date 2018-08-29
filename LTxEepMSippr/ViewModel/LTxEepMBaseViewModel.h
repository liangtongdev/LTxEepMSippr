//
//  LTxEepMBaseViewModel.h
//  AFNetworking
//
//  Created by liangtong on 2018/8/28.
//

#import <Foundation/Foundation.h>
#import <LTxCore/LTxCore.h>

@interface LTxEepMBaseViewModel : NSObject
/**
 * @brief 用户名认证登录
 **/
+(void)loginWithName:(NSString*)username password:(NSString*)password complete:(LTxStringCallbackBlock)complete;

/**
 * @brief 手机号认证登录
 **/
+(void)loginWithPhone:(NSString*)phoneNumber smsCode:(NSString*)smsCode complete:(LTxStringCallbackBlock)complete;

///#begin
/**
 *@brief 修改登录密码
 */
///#end
+(void)changePasswordWithNewPassword:(NSString*)newPassword complete:(LTxStringCallbackBlock)complete;

/**
 * @brief 获取服务地址
 **/
+(void)appHostFetchComplete:(LTxBoolCallbackBlock)complete;

@end
