import Foundation
import Cucumberish

public class BaseStepDefinitions {
    
    func BaseSteps() {
        Given("Hello Cucumberish") {app, _ in
            print("hello")
            let app = XCUIApplication()
            app.launch()
        }
    }
    
}
