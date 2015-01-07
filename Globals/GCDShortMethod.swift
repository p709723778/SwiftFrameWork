//
//  GCDShortMethod.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/7.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation

func GCD_BackgroundBlock_t(block : dispatch_block_t!)->Void {
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
}

func GCD_MainBlock_t(block : dispatch_block_t!)->Void {
	dispatch_async(dispatch_get_main_queue(), block)
}
