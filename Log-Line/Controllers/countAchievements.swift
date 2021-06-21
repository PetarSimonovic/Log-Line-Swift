//
//  achivements.swift
//  Log-Line
//
//  Created by Petar Simonovic on 19/05/2021.
//

import Foundation
    


    
    func countAchievements(_ storyBank: [Story] = masterStoryBank) -> [String : Int] {
        
        var achievementBank: [String: Int] = [:]

        
        for story in storyBank {
            if achievementBank.keys.contains(story.genre) {
               var value = achievementBank[story.genre]
                value! += 1
                achievementBank.updateValue(value!, forKey: story.genre)
            } else {
                achievementBank.updateValue(1, forKey: story.genre)
                
            }
            
        }
        print(achievementBank)
        return achievementBank
    
    }

func checkAchievements(_ achievements: [String : Int], _ badgeName: String) -> Int {
    if achievements.keys.contains(badgeName) {
        return achievements[badgeName] ?? 0
    } else {
        return 0
    }
    
}
    

func assignBadge(_ player: Int, _ full: Int, _ badge: Badge) -> String {
    if player == full {
        return badge.symbol
    } else {
        return "\u{f059}"
    }
}

