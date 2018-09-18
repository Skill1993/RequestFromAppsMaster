//
//  MathematicianTests.swift
//  MathematicianTests
//
//  Created by Никита Журавлев on 18.09.2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import XCTest
@testable import Mathematician

class MathematicianTests: XCTestCase {
    
    let resCalc = Calculation(num1: 0, num2: 0)
    
    func testAdd(){
        XCTAssertEqual(resCalc.summation(num1: 14, num2: 13),17)
        XCTAssertEqual(resCalc.sub(num1: 13, num2: 40), -27)
        XCTAssertEqual(resCalc.divideBy(num1: 56, num2: 8), 7)
        XCTAssertEqual(resCalc.extraDivide(num1: 7, num2: 5), 2)
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
