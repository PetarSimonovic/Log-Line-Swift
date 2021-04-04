//
//  LogLine.swift
//  Log-Line
//
//  Created by Petar Simonovic on 03/04/2021.
//

import Foundation
import SwiftUI

struct LogLine {
    
    
    func generateLogLine() -> String {
        return "A \(pickPosAdj()) but \(pickNegAdj()) \(pickNoun()) must \(pickVerbFirstPerson()) a \(pickPosAdj()) \(pickNoun()) before a \(pickNegAdj()) \(pickNoun()) \(pickVerbThirdPerson()) a \(pickNoun())"
    }
    
    func pickPosAdj() -> String {
        let posAdjBank = ["fast", "clever", "bright", "funny", "warm", "caring"]
        return posAdjBank[makeChoice(posAdjBank.count)]
    }
    
    func pickNegAdj() -> String {
        let negAdjBank = ["satanic", "cruel", "mean", "hunourless", "aggressive", "scheming"]
        return negAdjBank[makeChoice(negAdjBank.count)]

    }
    
    func pickNoun() -> String {
        let nounBank = ["planet", "rubber duck", "wizard", "houseplant", "cat"]
        return nounBank[makeChoice(nounBank.count)]

    }
    
    func pickVerbFirstPerson () -> String {
        let verbFirstPersonBank = ["launch", "comfort", "hug", "cheer up", "defeat"]
        return verbFirstPersonBank[makeChoice(verbFirstPersonBank.count)]
    }
    
    func pickVerbThirdPerson () -> String {
        let verbThirdPersonBank = ["annoys", "wrestles", "insults", "threatens", "slsps"]
        return verbThirdPersonBank[makeChoice(verbThirdPersonBank.count)]
    }
    
    func makeChoice (_ bank: Int) -> Int {
        return Int.random(in: 0...bank - 1)
    }


}
