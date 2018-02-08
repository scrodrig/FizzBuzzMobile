//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by Schubert Rodriguez on 2/7/18.
//  Copyright © 2018 Thoughtworks. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() {
        
    }
    
}
