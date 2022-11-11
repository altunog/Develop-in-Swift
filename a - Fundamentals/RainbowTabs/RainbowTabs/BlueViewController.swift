//
//  BlueViewController.swift
//  RainbowTabs
//
//  Created by Oğuz Kaan Altun on 29.08.2022.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.title = "Purple"
    }

}
