// MasterViewController.swift
//
// Copyright (c) 2014 Alamofire (http://alamofire.org)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation
import Alamofire

enum HTTPBinRoute: URLStringConvertible {
    case Method(Alamofire.Method)
    case BasicAuth(String, String)

    var URLString: String {
        let baseURLString = "http://httpbin.org/"
        let path: String = {
            switch self {
            case .Method(let method):
                return "/\(method.rawValue.lowercaseString)"
            case .BasicAuth(let user, let password):
                return "/basic-auth/\(user)/\(password)"
            }
        }()

        return NSURL(string: path, relativeToURL: NSURL(string: baseURLString))!.absoluteString!
    }
}

//struct HTTPHost {
//    static let production = "http://stocks-api.herokuapp.com"
//    static let development = "http://localhost:4000"
//}
//
//enum HTTPBinRoute: URLStringConvertible {
//    case Action(String)
//    
//    var URLString: String {
//        let baseURLString = HTTPHost.production
//        let path: String = {
//            switch self {
//            case .Action(let action):
//                return action
//            }
//            }()
//        
//        return NSURL(string: path, relativeToURL: NSURL(string: baseURLString))!.absoluteString!
//    }
//}


