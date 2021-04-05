//
//  LogLine.swift
//  Log-Line
//
//  Created by Petar Simonovic on 03/04/2021.
//

import Foundation
import SwiftUI

struct LogLine {
    
    
    func generateLogLine() -> [String] {
        
        return [capUp(setArticle(pickPosAdj())), pickNegAdj(), pickNoun(), pickVerbFirstPerson(), setArticle(pickPosAdj()), pickNoun(), setArticle(pickNegAdj()), pickNoun(), pickVerbThirdPerson(), setArticle(pickNoun())]
    }
    
    func generateExcuse() -> [String] {
        
     return [pickExcuse(), pickVerbFirstPerson(), setArticle(pickPosAdj()), pickNoun(), setArticle(pickNegAdj()), pickNoun(), pickVerbPastTense(), setArticle(pickNoun())]
        }
    
    func pickPosAdj() -> String {
        return posAdjBank[makeChoice(posAdjBank.count)]
    }
    
    func pickNegAdj() -> String {
        return negAdjBank[makeChoice(negAdjBank.count)]

    }
    
    func pickNoun() -> String {
        return nounBank[makeChoice(nounBank.count)]

    }
    
    func pickVerbFirstPerson () -> String {
        return verbFirstPersonBank[makeChoice(verbFirstPersonBank.count)]
    }
    
    func pickVerbThirdPerson () -> String {

        return verbThirdPersonBank[makeChoice(verbThirdPersonBank.count)]
    }
    
    func pickExcuse() -> String {
      let excuseBank = ["missed your wedding", "didn't come to work", "missed the deadline", "forgot your birthday", "wasn't at school", "ruined your party", "ate all of the cake", "sold your records", "threw away your hat", "yawned during your speech", "interrupted you", "wandered off", "fell asleep", "swore"];
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
