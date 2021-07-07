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
            if countAchievementBadges(10) {
                HStack{
                Text("\(countBadges[10]!)")
                .font(.custom("FontAwesome6Pro-Solid", size: 50))
                Text("\(countBadgeText[10]!)")
                    .font(.custom("Courier", size: 12))
                }
            } else {
                Text("10 Stories")
                 .font(.custom("Courier", size: 50))
            }
            if countAchievementBadges(25) {
                Text("\(countBadges[25]!)")
                    .font(.custom("FontAwesome6Pro-Solid", size: 50))
            } else {
                Text("25 Stories")
                 .font(.custom("Courier", size: 50))
            }
            if countAchievementBadges(50) {
                Text("\(countBadges[50]!)")
                    .font(.custom("FontAwesome6Pro-Solid", size: 50))
            } else {
                Text("50 Stories")
                 .font(.custom("Courier", size: 50))
            }
            if countAchievementBadges(75) {
                Text("\(countBadges[75]!)")
                .font(.custom("FontAwesome6Pro-Solid", size: 50))
            } else {
                Text("75 Stories")
                 .font(.custom("Courier", size: 50))
            }
            if countAchievementBadges(100) {
                Text("\(countBadges[100]!)")
                .font(.custom("FontAwesome6Pro-Solid", size: 50))
            } else {
                Text("100 Stories")
                 .font(.custom("Courier", size: 50))
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
