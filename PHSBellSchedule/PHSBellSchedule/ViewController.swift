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
    
    let test = ["08/21/2017"]
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
        super.viewDidLoad()
        menu = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Schedule", items: items as [AnyObject])
        menu.menuTitleColor = UIColor.blue
        menu.backgroundColor = UIColor.cyan
        self.navigationItem.titleView = menu


        // Do any additional setup after loading the view, typically from a nib.
        
        formatter.dateFormat = "MM/dd/yyyy"
        let currentDate = formatter.string(from: date)
        print(currentDate)
        
        if test.contains("\(currentDate)")
        {
            print("yes")
        }
        
        menu.didSelectItemAtIndexHandler = {[weak self] (indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
            if(indexPath == 0){
                self?.imageView.image = UIImage(named: "regular.png")
            }
            else if(indexPath == 1){
                self?.imageView.image = UIImage(named: "pepOne.png")
            }
            else if(indexPath == 2){
                self?.imageView.image = UIImage(named: "pepTwo.png")
            }
            else if(indexPath == 3){
                self?.imageView.image = UIImage(named: "locker.png")
            }
            else if(indexPath == 4){
                self?.imageView.image = UIImage(named: "finalsOne.png")
            }
            else if(indexPath == 5){
                self?.imageView.image = UIImage(named: "finalsTwo.png")
            }
            else if(indexPath == 6){
                self?.imageView.image = UIImage(named: "finalsThree.png")
            }
            else if(indexPath == 7){
                self?.imageView.image = UIImage(named: "knightsWay.png")
            }
            else if(indexPath == 8){
                self?.imageView.image = UIImage(named: "early.png")
            }
            else if(indexPath == 9){
                self?.imageView.image = UIImage(named: "special.png")
            }
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

