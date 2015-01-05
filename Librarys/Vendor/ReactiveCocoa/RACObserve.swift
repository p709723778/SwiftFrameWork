//
//  RACObserve.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/4.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation
import ReactiveCocoa

// replaces the RACObserve macro
func RACObserve(target: NSObject!, keyPath: String) -> RACSignal  {
    return target.rac_valuesForKeyPath(keyPath, observer: target)
}