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
        return "\(capUp(setArticle(pickPosAdj()))) but \(pickNegAdj()) \(pickNoun()) must \(pickVerbFirstPerson()) \(setArticle(pickPosAdj())) \(pickNoun()) before \(setArticle(pickNegAdj())) \(pickNoun()) \(pickVerbThirdPerson()) \(setArticle(pickNoun()))"
    }
    
    func generateExcuse() -> String {
     return "Sorry I \(pickExcuse()) but I had to \(pickVerbFirstPerson()) \(setArticle(pickPosAdj())) \(pickNoun()) because \(setArticle(pickNegAdj())) \(pickNoun()) \(pickVerbPastTense()) \(setArticle(pickNoun()))"
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
    
    func pickExcuse() -> String {
      let excuseBank = ["missed your wedding", "didn't come to work", "missed the deadline", "forgot your birthday", "wasn't at school", "missed your dinner party", "ate all of the cake", "sold your record collection", "threw away your hat", "fell asleep while you were talking", "interrupted you", "wandered off"];
        return excuseBank[makeChoice(excuseBank.count)];
      };
    
    func pickVerbPastTense() -> String {
      let verbBankPast = ["destroyed", "ate", "ruined", "broke", "threatened", "insulted", "cajoled", "attacked", "ignored", "fought", "hurt", "upset", "drained", "vandalised", "truncated", "annoyed", "swore at", "slapped", "glared at", "intimidated", "slandered", "snubbed", "upset", "patronised", "offended"];
        return verbBankPast[makeChoice(verbBankPast.count)];
    }
    
    func makeChoice (_ bank: Int) -> Int {
        return Int.random(in: 0...bank - 1)
    }
    
    func setArticle(_ word: String) -> String {
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
