//
//  achievementBadgeCount.swift
//  LogLine
//
//  Created by Petar Simonovic on 30/06/2021.
//

import Foundation


let countBadges = [
    10 : "\u{f819}",
    25 : "\u{f3ff}",
    50 : "\u{f8a9}",
    75 : "\u{f008}",
    100 : "\u{f683}",
]

func countAchievementBadges(_ badgeCount: Int) -> Bool {
    
        if stories.count > badgeCount {
           return true
        } else {
         return  false
  }
}
