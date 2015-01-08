//
//  NetWorkReqeust.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/6.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation
import Alamofire


enum HTTPBinRoute: URLStringConvertible {
    ///http 请求模式 post  get等
    ///HTTPBinRoute.Method(.GET) 最终的地址 http://www.jucaicp.com/get
    case Method(Alamofire.Method)
    //验证地址
    ///.BasicAuth(用户名,密码)
    case BasicAuth(String, String)
    ///.Action(操作连接地址)
    case Action(String)
    var URLString: String {
        let baseURLString = Api_ServerAddress
        let path: String = {
            switch self {
            case .Method(let method):
                return "/\(method.rawValue.lowercaseString)"
            case .BasicAuth(let user, let password):
                return "/basic-auth/\(user)/\(password)"
            case .Action(let action):
                return action
            }
            }()
        //打印请求地址
        println(NSURL(string: path, relativeToURL: NSURL(string: baseURLString))!.absoluteString!)
        return NSURL(string: path, relativeToURL: NSURL(string: baseURLString))!.absoluteString!
    }
}