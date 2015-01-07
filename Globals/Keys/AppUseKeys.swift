//
//  AppUseKeys.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/7.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation

/**
该文件是用来定义 项目使用的钥匙,常用Key等
命名规范K_UDK  K是所有Key  AUK 是取文件名AppUseKeys的每个大写字母
*/

let K_AUK_isPhoneSystemLanguage = "K_AUK_isPhoneSystemLanguage"

///客户端标记id(用公司域名倒序来做Id)
let K_AUK_ClientMarkId = "com.jucaicp"

///客户端的URLScheme(回调客户端标识)
///该值是在plist文件里的URL Types有相关设置(两个要保持一直)
let K_AUK_ClientURLScheme = "jccp"

///友盟 AppKey
let K_AUK_UMENG_APPKEY = "53829f4756240b9b991f2725"

///新浪开放平台
let K_AUK_Sina_AppKey = "3988902311"
let K_AUK_Sina_AppSecret = "34d30a5ede58f52b48114714c7ac667c"

///QQ开放平台
let K_AUK_QQ_AppID = "1101342539"
let K_AUK_QQ_AppKey = "DiJAdWvR8OumisYb"

///微信移动应用平台
let K_AUK_WXAppID = "wx7b64a7c88f331e3c"
let K_AUK_WX_AppSecret = "6f71e66fc057bb9cb81df77f78db967f"

// 用户操作Key
let K_AUK_Operate_KEY          = "jucai"

// 用户支付Key
let K_AUK_Pay_Key              = "jucaipay"

// 用户投注Key
let K_AUK_Lottery_Key         = "jucai0113"

// AES加密Key
let K_AUK_Encrypt_Key          = "www.jucai.AES"

// SSKeychain钥匙串 服务名，用来存取用户名密码串
let K_AUK_SSKeychain_Service_Name = "www.jucaicp.com"

/************************************快捷支付相关Key********************************************/

// 商户私钥，自助生成
let K_AUK_PartnerPrivKey = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBALwGANrt0+3Jd1Hssp74YhhSYG1YjL6NT4MnLMvf8JmBys76nBg5c7/88sSYiOARFLEq05Z66TcS1D8jx0yLDQQf559tVm1Bwese95McNi5pqcggQwRPiXdPKIW/c94Xu41+Nm9EYlJyDfEJLPAcHedO6PMAldt7HUkU8O3YOLljAgMBAAECgYEAnx2heaRMde3JmT3rB1cBhL2ptr96FAP4JvBvG3U+4lmRbMlucZ2lE/MW60J+ishJr4ijmLQZSq8XiPtZPLBr6P8iaoCEi/usiLF7HL89tgT+i9YcZmTSjL1PcGqGYYie7oez6vrYOY2w6D5gfkxC9xLf5QHDR5Pa0S9VofSnEzkCQQDiuJBRIBwMHTMyEfPtgZBjhvGCB/Tp9EP9oi9QsVSE6IEi5Lrvik+132NyFLASrsGSIESLfVazYcUkleOn0c1lAkEA1E4X1aBTyL+V7fWiFru4SiACdgjkh0BKCKKL4A1rj6ybUhlm0+KTFSCUyPc07EnXK/PMedSP/dLpuPFv2O1DJwJAToImx1DdJXy/C6mX1Di3bR9/Zc2ni5QgLyYISGL/p35zqUeXS/eTHqGaaBit1+pX8WfnFH50lW1XvRGCYcyO2QJACAv9s0ckZdN9J0vMHPh4f7a+4SJtJwM0yyb+Djvz+7obGP2FfDp2QLK/cO6Nvvb9hNj0wxlfa8t2uF/OUXaMuQJBAJi2afVOER/M0mW+pWfzFkMFeH2FxMJeAGzIoZMaLTY4t8mAdNLKCMaxXwENB8XD0uR0F2K6w+0h8tfsqIoHZKI="

// 支付宝公钥
let K_AUK_AlipayPubKey    = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB"
/************************************快捷支付相关Key********************************************/
