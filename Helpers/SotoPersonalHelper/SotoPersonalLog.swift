//
//  SotoPersonalLog.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/7.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation
import UIKit

//          ╭──╮╭──╮╭──╮╭──╮
//          │╭─╯│╭╮│╰╮╭╯│╭╮│
//          │╰─╮││││ ││ ││││
//          ╰─╮│││││ ││ ││││
//          ╭─╯││╰╯│ ││ │╰╯│
//          ╰──╯╰──╯ ╰╯ ╰──╯

private let SOTO_VERSION = "1.0.0 β"

    class SotoPersonalLog {
	class func outPutPersonalLog()->Void {
		let model : String = UIDevice.currentDevice().model

		    if (model == "iPhone Simulator") {
			println("                                                                           ")
			println("                                                                           ")
			println("                                      .::::.                               ")
			println("                                    .::::::::.                             ")
			println("                                   :::::::::::                             ")
			println("                                ..:::::::::::'                             ")
			println("                             '::::::::::::'                                ")
			println("                               .::::::::::                                 ")
			println("                          '::::::::::::::..                                ")
			println("                               ..::::::::::::.                             ")
			println("                             ``::::::::::::::::                            ")
			println("                              ::::``:::::::::'        .:::.                ")
			println("                             ::::'   ':::::'       .::::::::.              ")
			println("                           .::::'      ::::     .:::::::'::::.             ")
			println("                          .:::'       :::::  .:::::::::' ':::::.           ")
			println("                         .::'        :::::.:::::::::'      ':::::.         ")
			println("                        .::'         ::::::::::::::'         ``::::.       ")
			println("                    ...:::           ::::::::::::'              ``::.      ")
			println("                   ```` ':.          ':::::::::'                  ::::..   ")
			println("                                      '.:::::'                    ':'````..")
			println("                                                                           ")
			println("                                                                           ")

			println("                                                   ")
			println("       copyright (c) 2014-2015, {Soto} people      ")
			println("       http://blog.sina.com.cn/p709723778          ")
			println("                                                   ")
			println("                                                   ")
			println("                                                   ")
			println("                                                   ")
			println("           \(SOTO_VERSION)                         ")
			println("           \(UIDevice.osLanguage())                ")
			println("                                                   ")
			println("                                                   ")
//		println("      越狱信息     %s	", [UIDevice jailBreaker].UTF8String)
//		println("       %s	", [UIDevice OSVersion].UTF8String)
//		println("       %s	", [UIDevice deviceModel].UTF8String)
//		println("       UUID: %s  ", [UIDevice deviceIdentifierForVendor].UTF8String)
			println("       Home: \(NSBundle.mainBundle().bundlePath.utf8) ")
			println("                                                   ")
			println("                                                   ")
		}
	}
}
