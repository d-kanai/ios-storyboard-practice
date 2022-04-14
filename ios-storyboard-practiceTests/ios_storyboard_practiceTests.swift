//
//  ios_storyboard_practiceTests.swift
//  ios-storyboard-practiceTests
//
//  Created by daiki kanai on 2022/04/04.
//

import XCTest
@testable import ios_storyboard_practice

class CounterControllerTests: XCTestCase {
    func test_画面が表示されたら_ラベルに0が表示される() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "CounterViewController") as? CounterViewController
        
        let label = viewController?.view.subviews
            .filter({ $0.accessibilityIdentifier == "countLabel" })
            .compactMap({ $0 as? UILabel })
            .first

        XCTAssertEqual(label?.text, "0")
    }
}

