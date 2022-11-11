//
//  YellowViewController.swift
//  RainbowTabs
//
//  Created by Oğuz Kaan Altun on 29.08.2022.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.title = "Green"
    }
    
    @IBAction func toGreenButtonTapped(_ button: UIButton) {
        performSegue(withIdentifier: "toGreen", sender: button)
    }

}
