import Foundation

class TestApplication: MyApplication {
    
    override init() {
        print("init Test Application")
    }
    
    static var mockCounterLogic: CounterLogic?

    override var counterLogic: CounterLogic {
        if(TestApplication.mockCounterLogic == nil) {
            assert(false, "it should set mockCounterLogic when use TestApplication class. production code try to use CounterLogic")
        }
        return TestApplication.mockCounterLogic!
    }
}

