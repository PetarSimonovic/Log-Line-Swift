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
            Text("Credits")
        .font(.custom("Courier", size: 18.5))
        .foregroundColor(Color(UIColor.systemBackground))
              .background(Color(UIColor.label))
        Spacer()
        .font(.custom("Courier", size: 18.5))
        .foregroundColor(Color(UIColor.label))
              .background(Color(UIColor.systemBackground))
        Spacer()
            .frame(height: 10)
        VStack {
        List(countBadges) {countBadge in
            VStack(alignment: .leading) {
            CountAchievementsRow(countBadge: countBadge)
        }
            .font(.custom("Courier", size: 16.5))
        }
        }
         }
            VStack {
            Text("Genre Works")
                .font(.custom("Courier", size: 18.5))
                .foregroundColor(Color(UIColor.systemBackground))
                      .background(Color(UIColor.label))

            VStack {

        List(badgeBank) { badge in
            VStack(alignment: .leading) {
                AchievementsRow(badge: badge)
            }
            .font(.custom("Courier", size: 16.5))
        }
          
            
        }
    }
}
}

struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}


