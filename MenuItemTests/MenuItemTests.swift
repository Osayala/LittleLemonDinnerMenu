//
//  MenuItemTests.swift
//  MenuItemTests
//
//  Created by Oscar Suarez on 19/05/2023.
//

import XCTest

@testable import LittleLemonDinnerMenu

final class MenuItemTests: XCTestCase {
    func test_menuItem_titleChange() {
        let dishTitle = Dishes(nameDish: "Test Dish")
        let result = DishView(dishTitle)
        XCTAssert(result.dish.nameDish == "Test Dish")
    }
    
    func test_menuItem_IngredientsChange() {
        let dishTitle = Dishes(nameDish: "Test Dish", ingredientDish: [.sugar, .milk])
        let testOrder = MenuOrder()
        let result = MenuItemDetailsView(dishTitle, testOrder )
        XCTAssert(result.dish.ingredientDish == [.sugar, .milk])
    }
}
