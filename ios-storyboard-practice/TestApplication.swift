import Foundation

class TestApplication: MyApplication {
    
    override init() {
        print("init Test Application")
    }
    
    static var mockCounterLogic: CounterLogic?

    override var counterLogic: CounterLogic {
        if(TestApplication.mockCounterLogic == nil) {
            assert(false, "it should set mockCounterLogic. production code try to use CounterLogic")
        }
        return TestApplication.mockCounterLogic!
    }
}

class MockCounterLogic: CounterLogic {
    
    override func someMethod() -> String {
        print("test override CounterLogic.someMethod")
        return "mock return"
    }
    
}
