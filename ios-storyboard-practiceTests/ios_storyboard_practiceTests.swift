//
//  ios_storyboard_practiceTests.swift
//  ios-storyboard-practiceTests
//
//  Created by daiki kanai on 2022/04/04.
//

import XCTest
@testable import ios_storyboard_practice

class CounterControllerTests: XCTestCase {
    
    var vc: CounterViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "CounterViewController") as? CounterViewController
    }

    func test_show_default_counter_label() {
        let label = findById(id: "countLabel") as UILabel
        XCTAssertEqual(label.text, "0")
    }
    
    func findById<T>(id:String) -> T {
        return vc.view.subviews
            .filter({ $0.accessibilityIdentifier == id })
            .compactMap({ $0 as? T })
            .first!
        
    }
    
}

