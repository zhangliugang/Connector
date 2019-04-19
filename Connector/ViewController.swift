//
//  ViewController.swift
//  Connector
//
//  Created by 张留岗 on 11/12/18.
//  Copyright © 2018 gugu. All rights reserved.
//

import UIKit
import WebKit
import SnapKit

class ViewController: NiblessViewController {

    override func viewDidLoad() {
		super.viewDidLoad()
        #if DEBUG
        registerDebug()
        #endif
		
	}


}

#if DEBUG
extension ViewController: DebuggableContext {
    var debugMenus: [DebuggableContextItem] {
        return [
            .init(name: "Test Connection") {

            }
        ]
    }
}
#endif
