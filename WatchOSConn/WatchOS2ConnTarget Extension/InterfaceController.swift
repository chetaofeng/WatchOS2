//
//  InterfaceController.swift
//  WatchOS2ConnTarget Extension
//
//  Created by chetaofeng on 16/6/29.
//  Copyright © 2016年 gsunis. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController,WCSessionDelegate {

    @IBOutlet var msgLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        //注册watchOS2的session
        let session = WCSession.defaultSession()
        if WCSession.isSupported() {
            session.delegate = self
            session.activateSession()
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        self.msgLabel.setText(String(message["key"]!))
    }
}
