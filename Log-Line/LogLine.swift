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
        let posAdjBank = ["accurate", "honest", "undemanding", "clever", "bright", "funny", "warm", "caring", "happy", "sentient", "friendly", "charismatic", "gentle", "fast", "rich", "talented", "musical", "organised", "chic", "fashionable", "intelligent", "smart", "harmonious", "famous", "generous", "fun", "traditional", "honest", "bright", "adventurous", "easygoing", "chilled out", "considerate", "loyal", "sincere", "sympathetic"]
        return posAdjBank[makeChoice(posAdjBank.count)]
    }
    
    func pickNegAdj() -> String {
        let negAdjBank = ["lazy", "slow", "hungry", "immoral", "rude", "insulting", "violent", "tired", "ignorant", "angry", "annoyed", "alienated", "sleepy", "boring", "bored", "bumbling", "clumsy", "evil", "satanic", "disenchanted", "boorish", "vulgar", "unfashionable", "moaning", "aggressive", "belligerent", "hostile", "cruel", "repressed", "uptight", "scheming", "humourless"]
        return negAdjBank[makeChoice(negAdjBank.count)]

    }
    
    func pickNoun() -> String {
        let nounBank = ["computer", "watch maker", "ghost", "ninja", "pond", "frog", "dog", "robot", "android", "cat", "vampire", "houseplant", "chameleon", "penguin", "garden", "rubber duck", "alien", "turkey", "bartender", "lawyer", "criminal", "horse thief", "auditor", "beekeper", "hot dog", "astronaut", "scuba diver", "dancer", "coder", "liar", "CEO", "cook", "writer", "guitarist", "pedestrian", "electronic musician", "DJ", "wrestler", "rapper", "king", "queen", "pilot", "singer", "planet", "book", "engineer", "werewolf", "witch", "detective", "farmer", "editor", "writer", "brewer", "doctor", "salad", "pizza", "tree"]
        return nounBank[makeChoice(nounBank.count)]

    }
    
    func pickVerbFirstPerson () -> String {
        let verbFirstPersonBank = ["rescue", "thank", "serenade", "create", "help", "cheer up", "console", "hug", "understand", "vindicate", "defend", "find", "free", "cooperate with", "simulate", "harness", "believe", "launch", "inspire", "enlighten", "hide", "surprise", "save", "revive", "cure", "befriend", "liberate", "conjure", "invigorate", "repair", "cheer up", "frown upon"]
        return verbFirstPersonBank[makeChoice(verbFirstPersonBank.count)]
    }
    
    func pickVerbThirdPerson () -> String {
        let verbThirdPersonBank = ["destroys", "surrenders to", "breaks", "threatens", "insults", "cajoles", "murders", "robs", "ignores", "fights", "attacks", "hurts", "upsets", "drains", "vandalises", "truncates", "annoys", "swears at", "slaps", "glares at", "intimidates", "demeans", "belittles", "upsets", "patronises", "slanders", "scorns", "wounds", "offends"]
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
    
    func aboutText() -> String {
        return "A log line is a short summary of a story that is used to pitch screenplays and novels to producers or publishers. It needs to be concise - no more than one or two sentences - yet cover the narrative's central characters and conflicts. Most importantly, it needs to hook the reader in.\n Log Line is an automatic generator of synopses for fiction. It  produces short, compelling fictional scenarios designed to serve as a framework for narrative development.\n Excuse Mode repurposes its fictional scenarios into plausible explanations that can be used to justify offensive or inconsiderate behaviour."
    }


}
