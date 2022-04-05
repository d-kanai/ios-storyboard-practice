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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //引数segueの中に画面遷移に関する情報が含まれている。
        if segue.identifier == "next" {
            let nextVC = segue.destination as! SecondViewController
            nextVC.passdata = count
        }
    }

    @IBAction func tappedButton(_ sender: Any) {
        print("tapped button")
        count = count + 1
        countLabel.text = String(count)
        if count >= 10 {
            countLabel.textColor = UIColor.green
            performSegue(withIdentifier: "next", sender: nil)

        }
    }
    
}

