//
//  Page1InterfaceController.swift
//  WatchOSConn
//
//  Created by chetaofeng on 16/6/30.
//  Copyright © 2016年 gsunis. All rights reserved.
//

import WatchKit
import Foundation


class Page1InterfaceController: WKInterfaceController {
    @IBOutlet var tableView: WKInterfaceTable!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        print("传递过来的参数：\(context)")
        self.tableView.setNumberOfRows(10, withRowType: "cell") //cell为TableRow的id
        for i in 0..<10 {
            let cell = self.tableView.rowControllerAtIndex(i) as! TableCell
            cell.tableLabel.setText(String("第\(i)行"))
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
    
    //传递参数
    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        return rowIndex
    }

}
