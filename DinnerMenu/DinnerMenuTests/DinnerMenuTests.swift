//
//  DinnerMenuTests.swift
//  DinnerMenuTests
//
//  Created by AS on 1/6/24.
//

import XCTest
@testable import DinnerMenu

final class DinnerMenuTests: XCTestCase {

    func test_menuItemTitle_equalToInitializedValue() {
        let title = "Spaghetti"
        let menuItem = MenuItem(title: title, price: 0, category: .food, orderCount: 0, ingredients: [])
        XCTAssertEqual(menuItem.title, title)
    }

}
