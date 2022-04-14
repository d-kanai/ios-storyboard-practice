//
//  SecondViewController.swift
//  ios-storyboard-practice
//
//  Created by daiki kanai on 2022/04/05.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var passdata = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(passdata)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Switch(_ sender: UISwitch) {
        if sender.isOn {
            showNotification()
            print("switch tapped!")
        }
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    func showNotification() {
        let content = UNMutableNotificationContent()
        content.title = "countUpAppForBeginners"
        content.body = "switchをオンにしました。"
        content.sound = UNNotificationSound.default
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(3), repeats: false) //3秒後に通知させる
        let request = UNNotificationRequest(identifier: "changedSwitch", content: content, trigger: trigger)
        
        

        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}
