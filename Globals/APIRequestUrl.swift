//
//  APIRequestUrl.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/6.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation

struct ReqeustDataFormat {
    ///XML数据格式
    static let XML = "XML"
    ///JSON数据格式
    static let JSON = "JSON"
}

///用户登录 接口序号: 6.1.2
let Api_RequestUrl_UserLogin = "?c=api_user&a=login&callType=" + ReqeustDataFormat.XML