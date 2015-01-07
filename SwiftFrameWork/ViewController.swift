//
//  ViewController.swift
//  SwiftFrameWork
//
//  Created by Soto on 15/1/5.
//  Copyright (c) 2015年 Soto. All rights reserved.
//

import UIKit
import Alamofire

class ViewController : UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let parameters = ["symbols" : "111"]
		Alamofire.request(.GET, HTTPBinRoute.Action(Api_RequestUrl_UserLogin), parameters : parameters)

		localizeString("key")
        SotoPersonalLog.outPutPersonalLog()
        
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
