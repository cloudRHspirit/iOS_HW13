//
//  ViewController.swift
//  App Event Count
//
//  Created by Roman Hural on 09.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var didFinishLaunchingLabel: UILabel!
    @IBOutlet var configurationForConnectingLabel: UILabel!
    @IBOutlet var willConnectToLabel: UILabel!
    @IBOutlet var didBecomeActiveLabel: UILabel!
    @IBOutlet var willResignActiveLabel: UILabel!
    @IBOutlet var willEnterForegroundLabel: UILabel!
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func uodateView() {
        didFinishLaunchingLabel.text = "The app has finished \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "configurationForConnecting \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectToLabel.text = "willConnectTo \(willConnectCount) time(s)"
        didBecomeActiveLabel.text = "didBecomeActive \(didBecomeActiveCount) time(s)"
        willResignActiveLabel.text = "willResignActive \(willResignActiveCount) time(s)"
        willEnterForegroundLabel.text = "willEnterForeground \(willEnterForegroundCount) time(s)"
        didEnterBackgroundLabel.text = "didEnterBackground \(didEnterBackgroundCount) time(s)"
    }

}

