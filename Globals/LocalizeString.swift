//
//  LocalizeString.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/6.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import Foundation


/**
   语言本地化读取

   :param: key key

   :returns: 返回内容描述
 */
    func localizeString(key : String)->String {
        return STLocalizeString.sharedInstance().localizedStringForKey(key)
}

/**
   语言本地化读取

   :param: key key
   :param: comment 内容

   :returns: 返回值描述
 */
func localizeString(key : String, comment : String)->String {
	return STLocalizeString.sharedInstance().localizedStringForKey(key, comment: comment)
}


private class STLocalizeString
{
 
    ///用来存放 国际化语言内容集合(Localizable内容都放进这个变量里面)
    var dicoLocalisation :NSDictionary? = nil
    
    ///此沙盒是用来保存当前语言信息的
    var defaults :NSUserDefaults? = nil
    
    ///语言类型集合
    var availableLanguagesArray : NSArray? = nil
    
    ///当前语言类型
    var currentLanguage : String = String()
    
    
    ///保存本地化语言Key
    let kSaveLanguageDefaultKey = "kSaveLanguageDefaultKey"
    
    ///是否保存 设置的默认语言
    var saveInUserDefaults : Bool {
        get{
            return !((defaults!.objectForKey(kSaveLanguageDefaultKey) as String).isEmpty)
        }
        set(newValue){
            if(newValue)
            {
                defaults!.setObject(currentLanguage, forKey: kSaveLanguageDefaultKey)
            }else{
             defaults!.removeObjectForKey(kSaveLanguageDefaultKey)
            }
            defaults?.synchronize()
        }
    }
    
    private init(){
        defaults = NSUserDefaults.standardUserDefaults()
        availableLanguagesArray = ["DeviceLanguage", "English", "French"]
        dicoLocalisation = nil
        currentLanguage = "DeviceLanguage"
        saveInUserDefaults = true
        
        var languageSaved :String = defaults!.objectForKey(kSaveLanguageDefaultKey) as String
        if(languageSaved != "DeviceLanguage" && languageSaved.isEmpty)
        {
            loadDictionaryForLanguage(languageSaved)
        }
    }
    
    
    private class func sharedInstance() ->STLocalizeString
    {
        var _sharedInstance : STLocalizeString? = nil
        var token : dispatch_once_t? = nil
        dispatch_once(&token!, { () -> Void in
            _sharedInstance = STLocalizeString();
        })
        return _sharedInstance!
    }
    
    
    private func loadDictionaryForLanguage(newLanguage:String) -> Bool
    {
        let urlPath : NSURL? =  NSBundle().URLForResource("Localizable", withExtension: "strings", subdirectory: nil, localization: newLanguage)
        
        if(NSFileManager.defaultManager().fileExistsAtPath(urlPath!.path!))
        {
            currentLanguage = newLanguage.copy() as String
            dicoLocalisation = NSDictionary(contentsOfFile: urlPath!.path!)!.copy() as? NSDictionary
            return true
        }
        return false
    }
    
    private func localizedStringForKey(key : String) ->String
    {
        if(dicoLocalisation == nil)
        {
            return NSLocalizedString(key, comment: key)
        }else{
            var localizedString : String = dicoLocalisation![key] as String
            
            if(localizedString.isEmpty)
            {
                localizedString = key
            }
            return  localizedString
        }
    }
    
    private func localizedStringForKey(key : String , comment : String) ->String
    {
        if(dicoLocalisation == nil)
        {
            return NSLocalizedString(key, comment: comment)
        }else{
            var localizedString : String = dicoLocalisation![key] as String
            
            if(localizedString.isEmpty)
            {
                localizedString = key
            }
            return  localizedString
        }
    }
    
    func setLanguage(newLanguage: String) -> Bool
    {
        if(newLanguage.isEmpty || newLanguage == currentLanguage || availableLanguagesArray!.containsObject(newLanguage))
        {
            return false;
        }
        
        if(newLanguage == "DeviceLanguage")
        {
            currentLanguage = newLanguage.copy() as String
            dicoLocalisation = nil
            NSNotificationCenter.defaultCenter().postNotificationName(K_NK_NotificationLanguageChanged, object: nil)
            return true
        }else{
            var isLoadingOk : Bool =  loadDictionaryForLanguage(newLanguage)
            if(isLoadingOk)
            {
                NSNotificationCenter.defaultCenter().postNotificationName(K_NK_NotificationLanguageChanged, object: nil)
                if(saveInUserDefaults)
                {
                    defaults!.setObject(currentLanguage, forKey: kSaveLanguageDefaultKey)
                    defaults!.synchronize()
                }
            }
            return isLoadingOk;
        }
    }
    
    ///类释放内存方法
    deinit {
        // perform the deinitialization
//        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
}
