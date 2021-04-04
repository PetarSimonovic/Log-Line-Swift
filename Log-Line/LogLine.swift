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
        return "A \(pickPosAdj()) but \(pickNegAdj()) \(pickNoun()) must \(pickVerbFirstPerson()) a [chilled out] [scuba diver] before an [ignorant] [king] [annoys] a [rubber] duck"
    }
    
    func pickPosAdj() -> String {
        return "fast"
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

}
