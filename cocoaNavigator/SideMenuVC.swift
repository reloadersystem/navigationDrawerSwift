//
//  SideMenuVC.swift
//  cocoaNavigator
//
//  Created by Resembrink Correa Egoavil on 11/4/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
         NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        case 0:  NotificationCenter.default.post(name: NSNotification.Name("ShowProfile"), object: nil)
        case 1:  NotificationCenter.default.post(name: NSNotification.Name("ShowSettings"), object: nil)
        case 2:  NotificationCenter.default.post(name: NSNotification.Name("ShowSignIn"), object: nil)
            
        default: break
        }
    }
}
