//
//  ViewController.swift
//  TrafficSeques
//
//  Created by Oğuz Kaan Altun on 25.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func yellowButtonTapped(_ button: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ button: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}

