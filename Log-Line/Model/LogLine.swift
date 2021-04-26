//
//  LogLine.swift
//  Log-Line
//
//  Created by Petar Simonovic on 03/04/2021.
//

import Foundation
import SwiftUI

struct LogLine {
    
    init() {
        loadStories()
    }
    
    
    func generateLogLine() -> [String] {

        
        for family in UIFont.familyNames {

            let sName: String = family as String
            print("family: \(sName)")
                    
            for name in UIFont.fontNames(forFamilyName: sName) {
                print("name: \(name as String)")
            }
        }
        
        return [capUp(setArticle(pickPosAdj())), pickNegAdj(), pickNoun(), pickVerbFirstPerson(), setArticle(pickPosAdj()), pickNoun(), setArticle(pickNegAdj()), pickNoun(), pickVerbThirdPerson(), setArticle(pickProperNoun())]
    }
    
    func generateExcuse() -> [String] {
        
        print("Excuse")
        
     return [pickExcuseVerb(), pickExcuseNoun(), pickVerbFirstPerson(), setArticle(pickPosAdj()), pickNoun(), setArticle(pickNegAdj()), pickNoun(), pickVerbPastTense(), setArticle(pickNoun())]
        }
    
    func pickPosAdj() -> String {
        return posAdjBank[makeChoice(posAdjBank.count)]
    }
    
    func pickNegAdj() -> String {
        return negAdjBank[makeChoice(negAdjBank.count)]

    }
    
    func pickProperNoun() -> String {
        let nouns = properNouns.count + nounBank.count
        if Int.random(in: 0...nouns) < properNouns.count {
            return properNouns[makeChoice(properNouns.count)]
        } else
        {
            return pickNoun()
        }
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
    
    func pickExcuseVerb() -> String {
        return excuseVerbBank[makeChoice(excuseVerbBank.count)];
      };
    
    func pickExcuseNoun() -> String {
        return excuseNounBank[makeChoice(excuseNounBank.count)];
      };
    
    
    func pickVerbPastTense() -> String {
        return verbBankPast[makeChoice(verbBankPast.count)];
    }
    
    func setArticle(_ word: String) -> String {
        let vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        let words = ["honest", "honourable"]
        let letter = word.prefix(1)
        if properNouns.contains(word) {
          return word
        }
        else if vowels.contains(String(letter)) || words.contains(String(word)) {
          return "an \(word)"
        }
        else {
            return "a \(word)"
        }
    }
    
    func capUp(_ word: String) -> String {
        
      return String(word.prefix(1)).uppercased() + String(word.dropFirst())
        
    }
    
    func updateStories(_ story: Story) {
        stories.append(story)
    }




}
