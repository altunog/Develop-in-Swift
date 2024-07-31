//
//  ViewController.swift
//  MusicWireframe
//
//  Created by Oğuz Kaan Altun on 24.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var isPlaying: Bool = true {
        didSet {
            playPauseButton.isSelected = isPlaying
        }
    }

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

    @IBAction func playPauseButtonTapped(_ sender: UIButton) {
        isPlaying.toggle()
        
        if isPlaying {
            UIView.animate(withDuration: 0.6,
                           delay: 0.0,
                           usingSpringWithDamping: 0.6,
                           initialSpringVelocity: 0.1) {
                self.albumImageView.transform = .identity
            }
        } else {
            UIView.animate(withDuration: 0.5) {
                self.albumImageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
        }
    }
    
    
    @IBAction func touchedDown(_ sender: UIButton) {
        let buttonBackground: UIView
        
        switch sender {
        case reverseButton:
            buttonBackground = reverseBackground
        case playPauseButton:
            buttonBackground = playPauseBackground
        case forwardButton:
            buttonBackground = forwardBackgorund
        default:
            return
        }
        
        UIView.animate(withDuration: 0.25) {
            buttonBackground.alpha = 0.3
            sender.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }
    }
    
    @IBAction func touchedUpInside(_ sender: UIButton) {
        let buttonBackground: UIView
        
        switch sender {
        case reverseButton:
            buttonBackground = reverseBackground
        case playPauseButton:
            buttonBackground = playPauseBackground
        case forwardButton:
            buttonBackground = forwardBackgorund
        default:
            return
        }
        
        UIView.animate(withDuration: 0.25) {
            buttonBackground.alpha = 0
            buttonBackground.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            sender.transform = .identity
        } completion: { _ in
            buttonBackground.transform = .identity
        }
    }
    
    @IBAction func touchedUpOutside(_ sender: UIButton) {
        let buttonBackground: UIView
        
        switch sender {
        case reverseButton:
            buttonBackground = reverseBackground
        case playPauseButton:
            buttonBackground = playPauseBackground
        case forwardButton:
            buttonBackground = forwardBackgorund
        default:
            return
        }
        
        UIView.animate(withDuration: 0.25) {
            buttonBackground.alpha = 0
            buttonBackground.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            sender.transform = .identity
        } completion: { _ in
            buttonBackground.transform = .identity
        }
    }
}

