//
//  AppDelegate.swift
//  WatchOSConn
//
//  Created by chetaofeng on 16/6/29.
//  Copyright © 2016年 gsunis. All rights reserved.
//

import UIKit
import WatchConnectivity

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,WCSessionDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //注册watchOS2的session
        let session = WCSession.defaultSession()
        if WCSession.isSupported() {
            session.delegate = self
            session.activateSession()
        }
        return true
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        print(message)
    }
}

