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
        print("Here")
        return "A \(pickPosAdj()) but \(pickNegAdj()) \(pickNoun()) must \(pickVerbFirstPerson()) a \(pickPosAdj()) \(pickNoun()) before a \(pickNegAdj()) \(pickNoun()) \(pickVerbThirdPerson()) a \(pickNoun())"
    }
    
    func pickPosAdj() -> String {
        let posAdjBank = ["fast", "clever", "bright", "funny", "warm", "caring"]
        return posAdjBank[makeChoice(posAdjBank.count)]
    }
    
    func pickNegAdj() -> String {
        return "satanic"
    }
    
    func pickNoun() -> String {
        return "planet"
    }
    
    func pickVerbFirstPerson () -> String {
        return "launch"
    }
    
    func pickVerbThirdPerson () -> String {
        return "annoys"
    }
    
    func makeChoice (_ bank: Int) -> Int {
        let x = Int.random(in: 0...bank - 1)
        print(x)
        return x
    }


}
