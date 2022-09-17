//
//  ViewController.swift
//  AppEventCount
//
//  Created by Oğuz Kaan Altun on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var didFinishLaunchingLabel: UILabel!
    @IBOutlet var configurationForConnectingLabel: UILabel!
    @IBOutlet var willConnectLabel: UILabel!
    @IBOutlet var didBecomeActiveLabel: UILabel!
    @IBOutlet var willResignActiveLabel: UILabel!
    @IBOutlet var willEnterForegroundLabel: UILabel!
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) time(s)."
        configurationForConnectingLabel.text = "The App session connections has configured \(appDelegate.configurationForConnectingCount) time(s)."
        willConnectLabel.text = "The Scene has connected \(willConnectCount) time(s)."
        didBecomeActiveLabel.text = "The Scene has activated \(didBecomeActiveCount) time(s)."
        willResignActiveLabel.text = "The Scene has resigned \(willResignActiveCount) time(s)."
        willEnterForegroundLabel.text = "The Scene has entered foreground \(willEnterForegroundCount) time(s)."
        didEnterBackgroundLabel.text = "The Scene entered background \(didEnterBackgroundCount) time(s)."
    }

}

