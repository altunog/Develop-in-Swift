//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by Oğuz Kaan Altun on 17.12.2022.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = imageView.image else { return }
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        present(activityController, animated: true)
    }
    
    @IBAction func safariButtonTapped(_ sender: UIButton) {
        if let url = URL(string: "https://apple.com") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true)
        }
    }
    
    
    @IBAction func cameraButtonTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            alertController.dismiss(animated: true)
        }
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { action in
            print("User selected \(action.title!) action")
        }
        
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default) { action in
            print("User selected \(action.title!) action")
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        alertController.popoverPresentationController?.sourceView = sender
        
        present(alertController, animated: true)
        
    }
    
    @IBAction func emailButtonTapped(_ sender: UIButton) {
    }
    
}

