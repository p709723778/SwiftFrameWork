//
//  LocalizeString.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/6.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation

/**



 */
/**
   语言本地化读取

   :param: key key

   :returns: 返回内容描述
 */
func localizeString(key : String)->String {
	///是否随着系统语言进行本地化
	let isPhoneSystemLanguage = true

	    if (isPhoneSystemLanguage) {
		return NSLocalizedString(key, comment: key)
	}
	else {
	}
}

/**
   语言本地化读取

   :param: key key
   :param: comment 内容

   :returns: 返回值描述
 */
func localizeString(key : String, comment : String)->String {
	///是否随着系统语言进行本地化
	let isPhoneSystemLanguage = true

	    if (isPhoneSystemLanguage) {
		return NSLocalizedString(key, comment: comment)
	}
	else {
	}
}
