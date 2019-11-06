//
//  MainVC.swift
//  cocoaNavigator
//
//  Created by Resembrink Correa Egoavil on 11/4/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
// https://www.youtube.com/watch?v=Hl_Re_KLhcY

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showProfile),
                                               name: NSNotification.Name("ShowProfile"), object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSettings),
                                               name: NSNotification.Name("ShowSettings"), object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSignIn),
                                               name: NSNotification.Name("ShowSignIn"), object: nil)
        
    }
    
    @objc func showProfile(){
        
        performSegue(withIdentifier: "ShowProfile", sender: nil)
    
    }
    
    @objc func showSettings(){
        performSegue(withIdentifier: "ShowSettings", sender: nil)
    }
    
    @objc func showSignIn(){
        performSegue(withIdentifier: "ShowSignIn", sender: nil)
        
    }

    @IBAction func onMoreTapped(){
        print("TOOGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    
    
}
