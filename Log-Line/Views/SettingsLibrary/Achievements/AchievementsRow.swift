//
//  Achievements.swift
//  Log-Line
//
//  Created by Petar Simonovic on 19/05/2021.
//

import SwiftUI


struct AchievementsRow: View {
    
    var badge: Badge
    
    var body: some View {
        
        VStack (alignment: .leading) {
            HStack {
            Text(badge.name)
                .font(.custom("Courier", size: 30))
                .foregroundColor(Color(UIColor.systemBackground))
                 .background(Color(UIColor.label))
            Spacer()
            Text(badge.symbol)
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

