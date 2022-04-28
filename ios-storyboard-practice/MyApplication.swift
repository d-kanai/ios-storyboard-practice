
import Foundation
import UIKit

class MyApplication: UIApplication {
    
    override init() {
        print("init Application")
    }
    
    override class var shared: MyApplication {
        return UIApplication.shared as! MyApplication
    }
    
    var counterLogic: CounterLogic {
        return CounterLogic()
    }
    
}
