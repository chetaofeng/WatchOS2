//
//  ViewController.swift
//  WatchOSConn
//
//  Created by chetaofeng on 16/6/29.
//  Copyright © 2016年 gsunis. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController {

    @IBOutlet weak var msgText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func doSendAction(sender: AnyObject) {
        let sendDictMsg = ["key":self.msgText.text!]
        WCSession.defaultSession().sendMessage(sendDictMsg, replyHandler: { (reply) in
            print(reply)
            }) { (error) in
                print(error)
        }
    }

}

