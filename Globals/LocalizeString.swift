//
//  LocalizeString.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/6.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation

func localizeString(key : String)->String {
	return NSLocalizedString(key, comment: key)
}
