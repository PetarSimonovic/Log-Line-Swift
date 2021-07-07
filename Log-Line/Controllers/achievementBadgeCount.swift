//
//  achievementBadgeCount.swift
//  LogLine
//
//  Created by Petar Simonovic on 30/06/2021.
//

import Foundation

func countAchievementBadges(_ badgeCount: Int) -> Bool {
    
    if stories.count >= badgeCount {
           return true
        } else {
         return  false
  }
}
