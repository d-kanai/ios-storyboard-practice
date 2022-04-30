
import UIKit

class CounterViewController: ViewControllerBase {

    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Task{
            let data = try await counterLogic.sampleMethod()
            print(data)
        }
        viewDidloadWithDependency()
    }
    
    func callBack() {
        
    }
    
    func viewDidloadWithDependency() {
        print("here is dependency...!")
    }

    // input actions
    @IBAction func tapCountUpButton(_ sender: Any) {
        print("tapCountup")
        CounterPresenter().increment(view: self, counterNumber: Int(counter.text!)!)
    }
    
    // output actions
    func updateCounterLabel(countNumber: Int) {
        counter.text = String(countNumber)
    }
}
