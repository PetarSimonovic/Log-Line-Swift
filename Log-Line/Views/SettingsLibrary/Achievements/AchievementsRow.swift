//
//  Achievements.swift
//  Log-Line
//
//  Created by Petar Simonovic on 19/05/2021.
//

import SwiftUI


struct AchievementsRow: View {
    
    var badge: Badge
    
    let fullAchievements = countAchievements()
    let playerAchievements = countAchievements(stories)

   
    var body: some View {
        
       


        VStack (alignment: .leading) {
            
            let player = checkAchievements(playerAchievements, badge.name)
            let full = checkAchievements(fullAchievements, badge.name)

            
            HStack {
            Text(badge.name)
                .font(.custom("Courier", size: 25))
                .foregroundColor(Color(UIColor.systemBackground))
                 .background(Color(UIColor.label))
                    .font(.custom("Courier", size: 25))
                    .foregroundColor(Color(UIColor.systemBackground))
                     .background(Color(UIColor.label))
                Spacer()
                
                Text("\(player) / \(full)")
                    .font(.custom("Courier", size: 25))
                    .foregroundColor(Color(UIColor.systemBackground))
                     .background(Color(UIColor.label))
                        .font(.custom("Courier", size: 25))
                        .foregroundColor(Color(UIColor.systemBackground))
                         .background(Color(UIColor.label))
            Spacer()
            Text(assignBadge(player, full, badge))
                    .font(.custom("FontAwesome6Pro-Solid", size: 50))
                    .frame(alignment: .center)
                    .foregroundColor(Color(UIColor.label))
                    .background(Color(UIColor.systemBackground))
            }
    }
}

}
struct AchievementsRow_Previews: PreviewProvider {
    static var previews: some View {
        List(badgeBank) {
            currentBadge in
            VStack(alignment: .leading) {
                AchievementsRow(badge: currentBadge)
            }
    }
        
    }
}

