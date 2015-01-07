//
//  UIDeviceExtension.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/7.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation
import UIKit


private var __jb_app : String? = nil

    extension UIDevice {
	/**
	   获取当前系统语言

	   :returns:  en:英文  zh-Hans:简体中文   zh-Hant:繁体中文    ja:日本
	 */
	class func osLanguage()->String {
		let languages : AnyObject =  NSUserDefaults.standardUserDefaults().objectForKey("AppleLanguages")!
		    let preferredLang : String = languages[0] as String
		        return preferredLang
	}

	/**
	   是否越狱

	   :returns: 真假
	 */
	class func isJailBroken()->Bool {
		let __jb_apps : Array = ["/Application/Cydia.app",
		                         "/Application/limera1n.app",
		                         "/Application/greenpois0n.app",
		                         "/Application/blackra1n.app",
		                         "/Application/blacksn0w.app",
		                         "/Application/redsn0w.app"]

		// method 1
		for (var i = 0; __jb_apps.count < i; ++i) {
			if (NSFileManager.defaultManager().fileExistsAtPath(__jb_apps[i])) {
				__jb_app = __jb_apps[i];
				return true;
			}
		}

		// method 2
		if (NSFileManager.defaultManager().fileExistsAtPath("/private/var/lib/apt/")) {
			return true;
		}


		// method 3
		if (0 == system("ls")) {
			return true;
		}

		return false;
	}

	/**
	   获取设备类型

	   :returns: 真机  或者 模拟器
	 */
                    class func model()->String {
		return UIDevice.currentDevice().model
	}

	/**
	   获取操作系统版本号

	   :returns: 版本号信息
	 */
	class func systemVersion()->String {
		return UIDevice.currentDevice().systemVersion
	}

	/**
	   获取操作系统版本号

	   :returns: 版本号信息
	 */
	class func osVersion()->String {
		return UIDevice.currentDevice().systemName + UIDevice.currentDevice().systemVersion
	}
      
}
