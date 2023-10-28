//
//  ViewController.swift
//  Contest
//
//  Created by Oğuz Kaan Altun on 28.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if emailTextField.text?.isEmpty ?? true {
            UIView.animateKeyframes(withDuration: 0.2, delay: 0, options: [.autoreverse]) {
                self.emailTextField.transform = CGAffineTransform(translationX: 5, y: 0)
            } completion: { _ in
                self.emailTextField.transform = .identity
            }
        } else {
            performSegue(withIdentifier: "submit", sender: self)
        }
    }
    
}

