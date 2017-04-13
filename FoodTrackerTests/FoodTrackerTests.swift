//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Andriy Krupych on 4/11/17.
//  Copyright © 2017 Andriy Krupych. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    func testMealInitialization() {
        XCTAssertNotNil(Meal.init(name: "Meal", photo: nil, rating: 0))
        XCTAssertNil(Meal.init(name: "", photo: nil, rating: 0))
        XCTAssertNotNil(Meal.init(name: "Meal", photo: nil, rating: Int.max))
        XCTAssertNil(Meal.init(name: "", photo: nil, rating: -1))
    }
    
}
