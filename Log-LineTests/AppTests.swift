//
//  App.swift
//  LogLineTests
//
//  Created by Petar Simonovic on 21/06/2021.
//

import XCTest
import Foundation
import SwiftUI
@testable import LogLine

class AppTests: XCTestCase {
    
    var sut: LogLineApp!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        sut = LogLineApp()

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
    }

    func testItRemovesCollectedWorksFromStoryBank() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let story = stories[0]
        stories.append(storyBank[0])
        pruneStoryBank()
        XCTAssert(storyBank.contains(story) == false, "LogLine did not remove a collected work from the storyBank")

        
    }
    
    func testStoryBankShouldBeEmptyIfAllStoriesCollected () throws {
        for story in storyBank {
            stories.append(story)
            saveStories()
        }
        XCTAssert(storyBank.isEmpty, "storyBank was not emopty after all stories collected")

    }


}
