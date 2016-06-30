//
//  Page4InterfaceController.swift
//  WatchOSConn
//
//  Created by chetaofeng on 16/6/30.
//  Copyright © 2016年 gsunis. All rights reserved.
//

import WatchKit
import Foundation


class Page4InterfaceController: WKInterfaceController {

    @IBOutlet var label: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        //显示传递过来的参数
        self.label.setText(String("第\(context!)行传递"))
    }
}
