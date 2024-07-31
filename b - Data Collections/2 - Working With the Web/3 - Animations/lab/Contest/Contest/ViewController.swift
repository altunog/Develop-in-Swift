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
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if emailTextField.text?.isEmpty ?? true {
            emailTextField.layer.cornerRadius = 6
            emailTextField.layer.borderColor = UIColor.systemRed.cgColor
            emailTextField.layer.borderWidth = 1
            emailTextField.backgroundColor = .systemRed.withAlphaComponent(0.2)
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

