//
//  Log_LineTests.swift
//  Log-LineTests
//
//  Created by Petar Simonovic on 10/04/2021.
//

import XCTest
import Foundation
import SwiftUI
@testable import LogLine

class Log_LineTests: XCTestCase {
    
    var sut: LogLine!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        sut = LogLine()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
    }

   
    
    func testPositiveAdjective() {
        let posAdj = sut.pickPosAdj()
        XCTAssert(posAdjBank.contains(posAdj), "Logline didn't generate a positive adjective")
    }
    
    
    func testNegativeAdjective() {
        let negAdj = sut.pickNegAdj()
        XCTAssert(negAdjBank.contains(negAdj), "LogLine didn't generate a negative adjective")
    }
    
    func testNoun() {
        let noun = sut.pickNoun()
        XCTAssert(nounBank.contains(noun), "LogLine didn't generate a noun")
    }
    
    func testFirstPersonVerb() {
        let verbFP = sut.pickVerbFirstPerson()
        XCTAssert(verbFirstPersonBank.contains(verbFP), "LogLine didn't generate a first person verb")
    }
    
    func testThirdPersonVerb() {
        let verbTP = sut.pickVerbThirdPerson()
        XCTAssert(verbThirdPersonBank.contains(verbTP), "LogLine didn't generate a first person verb")
    }
    
    func testVerbPastTense() {
        let verbPT = sut.pickVerbPastTense()
        XCTAssert(verbBankPast.contains(verbPT), "LogLine didn't generate a first person verb")
    }
    
    func testExcuseNoun() {
        let excuseNoun = sut.pickExcuseNoun()
        XCTAssert(excuseNounBank.contains(excuseNoun), "LogLine didn't generate a first person verb")
    }
    
    func testExcuseVerb() {
        let excuseVerb = sut.pickExcuseVerb()
        XCTAssert(excuseVerbBank.contains(excuseVerb), "LogLine didn't generate a first person verb")
    }
    
    func testSetsAnArticle() {
        let articleVowel = sut.setArticle("ant")
        let articleConsonant = sut.setArticle("grasshopper")
        XCTAssertEqual(articleVowel, "an ant", "LogLine didn't set the correct article for a vowel")
        XCTAssertEqual(articleConsonant, "a grasshopper", "LogLine didn't set the correct article for a consonant")
        XCTAssertEqual(sut.setArticle("honest"), "an honest", "LogLine didn't set the correct article for a consonant")
        XCTAssertEqual(sut.setArticle("honourable"), "an honourable", "LogLine didn't set the correct article for a consonant")
    }
    
    func testCapUp() {
        XCTAssertEqual(sut.capUp("an ant"), "An ant", "LogLine didn't cap up the first letter")
    }
    



}
