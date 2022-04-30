import XCTest
import WiremockClient
@testable import ios_storyboard_practice

class CounterControllerTests: XCTestCase {
    
    var vc: CounterViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "CounterViewController") as? CounterViewController
        let mock = MockCounterLogic()
        mock.stubSomeMethod = "mock return"
        TestApplication.mockCounterLogic = mock
    }
    
    func test_show_default_counter_label() throws {
        try WiremockClient.postMapping(stubMapping:
            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlEqualTo, url: "http://localhost:8080/hoge/fuga")
                .willReturn(
                    ResponseDefinition()
                        .withStatus(200)
            )
        )
        //when
        let label = findById(id: "countLabel") as UILabel
        //then
        XCTAssertEqual(label.text, "0")
    }
    
    func test_increment_count_when_tap_countup() {
        //given
        let label = findById(id: "countLabel") as UILabel
        XCTAssertEqual(label.text, "0")
        //when
        let button = findById(id: "countUpButton") as UIButton
        button.sendActions(for: .touchUpInside)
        //then
        XCTAssertEqual(label.text, "1")
    }
    
    func findById<T>(id:String) -> T {
        let obj = vc.view.subviews
            .filter({ $0.accessibilityIdentifier == id })
            .compactMap({ $0 as? T })
            .first
        return obj!
        
    }
}

class MockCounterLogic: CounterLogic {
    
    var stubSomeMethod: String = ""
    
    override func someMethod() async throws -> String {
        print("test override CounterLogic.someMethod")
        return stubSomeMethod
    }
    
}



