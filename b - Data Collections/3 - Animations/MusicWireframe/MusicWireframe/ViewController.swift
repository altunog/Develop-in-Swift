//
//  ViewController.swift
//  MusicWireframe
//
//  Created by Oğuz Kaan Altun on 24.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var reverseBackground: UIView!
    @IBOutlet weak var playPauseBackground: UIView!
    @IBOutlet weak var forwardBackgorund: UIView!
    @IBOutlet weak var reverseButton: UIButton!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [reverseBackground, playPauseBackground, forwardBackgorund].forEach { view in
            guard let view else { return }
            view.layer.cornerRadius = view.frame.height / 2
            view.clipsToBounds = true
            view.alpha = 0.0
        }
    }


}

