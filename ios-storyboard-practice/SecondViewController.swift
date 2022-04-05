//
//  SecondViewController.swift
//  ios-storyboard-practice
//
//  Created by daiki kanai on 2022/04/05.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
}
