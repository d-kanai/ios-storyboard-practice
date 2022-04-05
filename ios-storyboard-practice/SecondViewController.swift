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
            print("switch tapped!")
        }
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
}
