//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Oğuz Kaan Altun on 29.08.2022.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem.badgeValue = "!"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarItem.badgeValue = nil
    }
    
    @IBAction func toOrangeButtonTapped(_ button: UIButton) {
        performSegue(withIdentifier: "toOrange", sender: button)
    }
    
}

