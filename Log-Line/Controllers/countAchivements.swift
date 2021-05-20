//
//  achivements.swift
//  Log-Line
//
//  Created by Petar Simonovic on 19/05/2021.
//

import Foundation


struct AchievementCounter {
    


    
    func countAchievements() -> [String: String] {
        
        var achievementBank: [String: String] = [:]

        
        for story in storyBank {
            if achievementBank[story.title] == nil {
               print("story not in bank")
            }
        }
        
        return achievementBank
    
    }
    
    
    
}
