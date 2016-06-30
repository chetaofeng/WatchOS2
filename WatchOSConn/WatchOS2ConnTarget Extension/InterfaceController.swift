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
    @IBOutlet var imageView: WKInterfaceImage!
    deinit{
        print("reloadRootControllers方法释放了本页面资源")
    }
    
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
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        self.msgLabel.setText(String(message["key"]!))
        
        let image1 = UIImage(named: "a")
        let image2 = UIImage(named: "b")
        let image = UIImage.animatedImageWithImages([image1!,image2!], duration: 6)
        self.imageView.setImage(image)
        self.imageView.startAnimating()
    }
    @IBAction func btnTaped() {
        
    }
    @IBAction func btnMorePageTaped() {
        //方式1
        self.presentControllerWithNames(["page1","page2","page3"], contexts: []) //contexts为传递的参数，在目的页面的awakeWithContext中可以获取
        
        //方式2
//        WKInterfaceController.reloadRootControllers([("page1","param1"),("page2","param2"),("page3","param3")])  //本方法会把其他页面的资源都释放掉
    }
}
