import Foundation
import UIKit

class ViewControllerBase: UIViewController {
    
    var counterLogic : CounterLogic {
        return application.counterLogic
    }
    
    var application : MyApplication {
        return MyApplication.shared
    }
    
    
}
