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
        return "\(capUp(setArticle(word: pickPosAdj()))) but \(pickNegAdj()) \(pickNoun()) must \(pickVerbFirstPerson()) \(setArticle(word: pickPosAdj())) \(pickNoun()) before \(setArticle(word: pickNegAdj())) \(pickNoun()) \(pickVerbThirdPerson()) \(setArticle(word: pickNoun()))"
    }
    
    func pickPosAdj() -> String {
        let posAdjBank = ["fast", "accurate", "honest", "undemanding", "clever", "bright", "funny", "warm", "caring"]
        return posAdjBank[makeChoice(posAdjBank.count)]
    }
    
    func pickNegAdj() -> String {
        let negAdjBank = ["satanic", "cruel", "mean", "humourless", "aggressive", "scheming"]
        return negAdjBank[makeChoice(negAdjBank.count)]

    }
    
    func pickNoun() -> String {
        let nounBank = ["planet", "rubber duck", "wizard", "houseplant", "cat", "elephant", "ant"]
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
    
    func setArticle(word: String) -> String {
        let vowels = ["a", "e", "i", "o", "u"]
        let letter = word.prefix(1)
        if vowels.contains(String(letter)) || word == "honest" {
          return "an \(word)"
        }
        else {
            return "a \(word)"
        }
    }
    
    func capUp(_ word: String) -> String {
        
      return String(word.prefix(1)).uppercased() + String(word.dropFirst())
        
    }


}
