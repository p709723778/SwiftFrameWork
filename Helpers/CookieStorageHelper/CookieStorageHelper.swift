//
//  CookieStorageHelper.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/9.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation


class CookieStorageHelper {
    
    class func setCookieValueWithKeyAndValue(key:String ,value:String)->Void
    {
        
        var dict = [NSHTTPCookieDomain:Api_ServerAddress,
            NSHTTPCookieExpires:[NSDate .distantFuture()],
            NSHTTPCookieName:key,
            NSHTTPCookiePath:"/",
            NSHTTPCookieValue:value
        ]
        
        var cookie = NSHTTPCookie(properties: dict)
        var sharedHTTPCookieStorage = NSHTTPCookieStorage.sharedHTTPCookieStorage()
        
        sharedHTTPCookieStorage.setCookie(cookie!)
    }
    
    class func setCookiesWithDictionary(dicCookies:NSDictionary)->Void {
        var cookie = NSHTTPCookie(properties: dicCookies)
        NSHTTPCookieStorage.sharedHTTPCookieStorage().setCookie(cookie!)
    }
    
    class func cookieValueWithKey(key:String)-> String{
        var sharedHTTPCookieStorage = NSHTTPCookieStorage.sharedHTTPCookieStorage()
        
        if( sharedHTTPCookieStorage.cookieAcceptPolicy !=  NSHTTPCookieAcceptPolicy.Always){
            NSHTTPCookieStorage.sharedHTTPCookieStorage().cookieAcceptPolicy = .Always
        }
        var cookies:Array<NSHTTPCookie> = sharedHTTPCookieStorage.cookiesForURL(NSURL(string: Api_ServerAddress)!) as Array
        for cookie in cookies {
            var name:NSString = cookie.name as NSString
            if ( !(name.isEqualToString(key) ) ){
                var str = NSString(string: cookie.value!)
                return str.stringByReplacingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
            }
        }
        
        return "";
    }
    
    class func deleteCookieWithKey(key:String)-> Void{
        
        var cookieJar = NSHTTPCookieStorage.sharedHTTPCookieStorage()
        
        var cookies : Array<NSHTTPCookie> = NSArray(array: cookieJar.cookies!) as Array
        
        for cookie in cookies {
            var name:NSString = cookie.name as NSString
            if (name.isEqualToString(key)){
                cookieJar.deleteCookie(cookie)
            }
        }
        
    }
    
    class func deleteAllCookies()-> Void{
        
        var cookieJar = NSHTTPCookieStorage.sharedHTTPCookieStorage()
        
        var _tmpArray:Array<NSHTTPCookie> = NSArray(array: cookieJar.cookies!) as Array
        
        for cookie in _tmpArray{
            cookieJar.deleteCookie(cookie)
        }
    }
    
}