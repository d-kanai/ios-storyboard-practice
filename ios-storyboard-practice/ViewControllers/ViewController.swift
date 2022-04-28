
import UIKit
import Combine

class ViewController: ViewControllerBase {
    
    var count = 0

    @IBOutlet weak var countLabel: UILabel!
    
    private var viewModel = CounterViewModel()
    private var binding = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let counter = Counter()
//        NotificationCenter.default
//            .publisher(for: UILabel.textDidChangeNotification, object: countLabel)
//            .compactMap { $0.object as? UILabel }
//            .map { $0.text ?? "" }
//            .removeDuplicates() // 重複した値は排除
//            .eraseToAnyPublisher()
//            .receive(on: RunLoop.main)
//            .assign(to: \.count, on: viewModel)
//            .store(in: &binding)
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
        viewModel.countUp()
        count = count + 1
        countLabel.text = String(count)
        if count >= 10 {
            countLabel.textColor = UIColor.green
            performSegue(withIdentifier: "next", sender: nil)

        }
    }
    
}


class Counter {
    var value: Int

    init() {
        value = 0
    }
}
