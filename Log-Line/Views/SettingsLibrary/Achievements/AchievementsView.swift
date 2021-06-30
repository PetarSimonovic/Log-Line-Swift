//
//  AchievementsView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/05/2021.
//

import SwiftUI
import Foundation

struct AchievementsView: View {
    
    
        
    
    
    var body: some View {
        
     

        
        VStack (alignment: .center) {
            Text("Achievements")
        }
        .font(.custom("Courier", size: 18.5))
        .foregroundColor(Color(UIColor.systemBackground))
              .background(Color(UIColor.label))
        Spacer()
        .font(.custom("Courier", size: 18.5))
        .foregroundColor(Color(UIColor.label))
              .background(Color(UIColor.systemBackground))
        Spacer()
            .frame(height: 10)
        
        VStack{
            HStack{
                Text("\(countAchievementBadges(10))")
                    .font(.custom("FontAwesome6Pro-Solid", size: 50))
                Text("\(countAchievementBadges(25))")
                    .font(.custom("FontAwesome6Pro-Solid", size: 50))
            }
            HStack{
                Text("\(countAchievementBadges(50))")
                    .font(.custom("FontAwesome6Pro-Solid", size: 50))
                Text("\(countAchievementBadges(75))")
                    .font(.custom("FontAwesome6Pro-Solid", size: 50))
                Text("\(countAchievementBadges(100))")
                    .font(.custom("FontAwesome6Pro-Solid", size: 50))


            }
        }

        List(badgeBank) { badge in
            VStack(alignment: .leading) {
                AchievementsRow(badge: badge)
            }
            .font(.custom("Courier", size: 16.5))
          
            
        }
    }
}


struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}
