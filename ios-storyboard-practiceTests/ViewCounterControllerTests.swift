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
    
    override func sampleMethod() async throws -> String {
        print("test override CounterLogic.someMethod")
        return stubSomeMethod
    }
    
}

extension UIView {

    class func getAllSubviews<T: UIView>(from parenView: UIView) -> [T] {
        return parenView.subviews.flatMap { subView -> [T] in
            var result = getAllSubviews(from: subView) as [T]
            if let view = subView as? T { result.append(view) }
            return result
        }
    }

    class func getAllSubviews(from parenView: UIView, types: [UIView.Type]) -> [UIView] {
        return parenView.subviews.flatMap { subView -> [UIView] in
            var result = getAllSubviews(from: subView) as [UIView]
            for type in types {
                if subView.classForCoder == type {
                    result.append(subView)
                    return result
                }
            }
            return result
        }
    }

    func getAllSubviews<T: UIView>() -> [T] { return UIView.getAllSubviews(from: self) as [T] }
    func get<T: UIView>(all type: T.Type) -> [T] { return UIView.getAllSubviews(from: self) as [T] }
    func get(all types: [UIView.Type]) -> [UIView] { return UIView.getAllSubviews(from: self, types: types) }
}


