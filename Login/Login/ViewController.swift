//
//  ViewController.swift
//  Login
//
//  Created by Oğuz Kaan Altun on 26.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.title = "Forgot Username"
        } else {
            segue.destination.title = usernameTextField.text
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let username = usernameTextField.text {
            if username.isEmpty {
                return false
            }
            return true
        }
        return false
    }
    
    @IBAction func forgotUsernameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
}
