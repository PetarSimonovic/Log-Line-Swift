//
//  achivements.swift
//  Log-Line
//
//  Created by Petar Simonovic on 19/05/2021.
//

import Foundation
    


    
    func countAchievements(_ storyBank: [Story] = storyBank) -> [String : Int] {
        
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
    
