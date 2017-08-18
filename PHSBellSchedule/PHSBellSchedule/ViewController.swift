//
//  ViewController.swift
//  PHSBellSchedule
//
//  Created by apcs2 on 8/16/17.
//  Copyright © 2017 apcs2. All rights reserved.
//

import UIKit
import BTNavigationDropdownMenu

class ViewController: UIViewController {
    var menu : BTNavigationDropdownMenu!
    override func viewDidLoad() {
        let items = ["Regular", "PEP1", "PEP2", "Locker Cleanup", "Finals Day 1", "Finals Day 2", "Finals Day 3", "Knights Way", "Early Dismissal", "Special Assembly"]
        super.viewDidLoad()
        menu = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Schedule", items: items as [AnyObject])
        menu.menuTitleColor = UIColor.blue
        menu.backgroundColor = UIColor.cyan
        self.navigationItem.titleView = menu


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

