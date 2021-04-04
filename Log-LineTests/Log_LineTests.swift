//
//  Log_LineTests.swift
//  Log-LineTests
//
//  Created by Petar Simonovic on 03/04/2021.
//

import XCTest
@testable import Log_Line

class Log_LineTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func generateLogLine() throws {
        let logline = LogLine()
        let text = logline.generateLogLine()
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
       XCTAssert(text == "A fast but satanic planet must launch a fast planet before a satanic planet annoys a planet")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
