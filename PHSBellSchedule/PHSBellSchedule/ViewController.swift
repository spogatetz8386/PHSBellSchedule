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
    
    let date = Date()
    let formatter = DateFormatter()
    let test = ["08/22/2017"]
    let pepAsm1 = ["08/18/2017", "12/08/2017", "04/06/2018"]
    let pepAsm2 = ["09/15/2017"]
    let kwDay = ["09/28/2017", "11/02/2017", "01/25/2018", "03/08/2018", "04/19/2018"]
    let earlyDis = ["03/23/2018", "05/25/2018"]
    let specialAsm = ["05/23/2018"]
    let lockerCU = "05/25/2018"
    let final1 = ["12/19/2017", "05/30/2018"]
    let final2 = ["12/20/2017", "05/31/2018"]
    let final3 = ["12/21/2017", "06/01/2018"]
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        let items = ["Regular", "PEP1", "PEP2", "Locker Cleanup", "Finals Day 1", "Finals Day 2", "Finals Day 3", "Knights Way", "Early Dismissal", "Special Assembly"]
        let schedules = ["regular.png", "pepOne.png", "pepTwo.png", "locker.png", "finalsOne.png", "finalsTwo.png", "finalsThree.png", "knightsWay.png", "early.png", "special.png"]
        super.viewDidLoad()
        menu = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Schedule", items: items as [AnyObject])
        menu.menuTitleColor = UIColor.blue
        menu.backgroundColor = UIColor.gray
        self.navigationItem.titleView = menu


        // Do any additional setup after loading the view, typically from a nib.
        
        formatter.dateFormat = "MM/dd/yyyy"
        let currentDate = formatter.string(from: date)
        print(currentDate)
        
        self.imageView.image = UIImage(named: "regular")
        print("regular")
        
        if pepAsm1.contains("\(currentDate)")
        {
            self.imageView.image = UIImage(named: "pepOne")
            print("pepAsm1")
        }
        if pepAsm2.contains("\(currentDate)")
        {
            self.imageView.image = UIImage(named: "pepTwo")
            print("pepAsm2")
        }
        if kwDay.contains("\(currentDate)")
        {
            self.imageView.image = UIImage(named: "knightsWay")
            print("kwDay")
        }
        if earlyDis.contains("\(currentDate)")
        {
            self.imageView.image = UIImage(named: "early")
            print("earlyDis")
        }
        if specialAsm.contains("\(currentDate)")
        {
            self.imageView.image = UIImage(named: "special")
            print("specialAsm")
        }
        if lockerCU.contains("\(currentDate)")
        {
            self.imageView.image = UIImage(named: "locker")
            print("lockerCU")
        }
        if final1.contains("\(currentDate)")
        {
            self.imageView.image = UIImage(named: "finalsOne")
            print("final1")
        }
        if final2.contains("\(currentDate)")
        {
            self.imageView.image = UIImage(named: "finalstwo")
            print("final2")
        }
        if final3.contains("\(currentDate)")
        {
            self.imageView.image = UIImage(named: "finalsThree")
            print("final3")
        }

        


        
        
        menu.didSelectItemAtIndexHandler = {[weak self] (indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
            self?.imageView.image = UIImage(named: schedules[indexPath])
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

