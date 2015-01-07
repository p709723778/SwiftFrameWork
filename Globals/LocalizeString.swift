//
//  LocalizeString.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/6.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation


///是否随着系统语言进行本地化
let isPhoneSystemLanguage = NSUserDefaults.standardUserDefaults().boolForKey(K_UDK_IsPhoneSystemLanguage)

/**
   语言本地化读取

   :param: key key

   :returns: 返回内容描述
 */
    func localizeString(key : String)->String {
	if (isPhoneSystemLanguage) {
		return NSLocalizedString(key, comment: key)
	}
	else {
		return NSLocalizedString(key, comment: key)
	}
}

/**
   语言本地化读取

   :param: key key
   :param: comment 内容

   :returns: 返回值描述
 */
func localizeString(key : String, comment : String)->String {
	if (isPhoneSystemLanguage) {
		return NSLocalizedString(key, comment: comment)
	}
	else {
		return NSLocalizedString(key, comment: key)
	}
}
