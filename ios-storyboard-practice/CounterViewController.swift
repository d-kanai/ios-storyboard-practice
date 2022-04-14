
import UIKit

class CounterViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(counter.accessibilityIdentifier)
        print("test")

    }
    

    @IBAction func tapCountUpButton(_ sender: Any) {
        print("tapCountup")
        let number = Int(counter.text!)!
        counter.text = String(number + 1)
    }
}
