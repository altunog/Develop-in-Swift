//
//  ViewController.swift
//  TwoButton
//
//  Created by Oğuz Kaan Altun on 23.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func setTextButtonTapped(_ button: UIButton) {
        label.text = textField.text
    }
    
    @IBAction func clearTextButtonTapped(_ button: UIButton) {
        textField.text = .none
        label.text = ""
    }
}

