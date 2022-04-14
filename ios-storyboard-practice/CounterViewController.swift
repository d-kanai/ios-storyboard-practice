
import UIKit

class CounterViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        counter.accessibilityIdentifier = "label"
        print(counter.accessibilityIdentifier)
        print("test")

    }
    

}
