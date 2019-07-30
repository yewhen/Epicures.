//
//  Epicures_UITests.swift
//  Epicures.UITests
//
//  Created by Alice on 7/19/19.
//  Copyright © 2019 Mallory. All rights reserved.
//

import XCTest
//@testable import Epicures


class EpicuresTests: XCTestCase {
    // MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        // Zero rating
        //let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        //let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        //XCUIApplication().buttons["SIGN OUT"].tap()
        XCTAssertNotNil(positiveRatingMeal)
    }

}
