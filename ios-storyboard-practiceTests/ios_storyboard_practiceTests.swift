import XCTest
@testable import ios_storyboard_practice

class CounterControllerTests: XCTestCase {
    
    var vc: CounterViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "CounterViewController") as? CounterViewController
    }
    
    func test_show_default_counter_label() {
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

class MockCounterViewController: CounterViewController {
    
    override func viewDidloadWithDependency() {
        print("override dependency function from test for ignore it")
    }
    
}



