//
//  CarTests.swift
//  TestingSampleTests
//
//  Created by mac on 1/9/19.
//  Copyright © 2019 mac. All rights reserved.
//

import XCTest
@testable import TestingSample

class CarTests: XCTestCase {
    var ferrari:Car!
    var jeep:Car!
    var honda:Car!
    override func setUp() {
        super.setUp()

        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        super.tearDown()
        ferrari = nil
        jeep = nil
        honda = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testSportFasterThanJeep() {
        let minutes = 60
        //1 start ferrari
        ferrari.start(minutes: minutes)
        //2 start jeep
        jeep.start(minutes: minutes)
        //Test it
        XCTAssertTrue(ferrari.miles > jeep.miles)
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
