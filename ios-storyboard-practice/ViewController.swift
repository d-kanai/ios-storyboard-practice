//
//  ViewController.swift
//  ios-storyboard-practice
//
//  Created by daiki kanai on 2022/04/04.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    @IBOutlet weak var countLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: Any) {
        print("tapped button")
        count = count + 1
        countLabel.text = String(count)
        if count >= 10 {
            countLabel.textColor = UIColor.green
        }
    }
    
}

