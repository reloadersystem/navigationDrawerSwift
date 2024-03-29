//
//  ContainerVC.swift
//  cocoaNavigator
//
//  Created by Resembrink Correa Egoavil on 11/4/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
    }
    
    @objc func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -318
            
        } else {
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
        
        UIView.animate(withDuration: 0.3){
            self.view.layoutIfNeeded()
        }
        
    }
}
