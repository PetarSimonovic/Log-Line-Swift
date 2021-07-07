//
//  CountAchievementsRow.swift
//  LogLine
//
//  Created by Petar Simonovic on 07/07/2021.
//

import SwiftUI

struct CountAchievementsRow: View {
    
    var countBadge: CountBadge

    var body: some View {
        VStack{
            if countAchievementBadges(countBadge.count) {
                VStack {
                    Text("\(countBadge.name)")
                        .font(.custom("Courier", size: 20))
                        .background(Color(UIColor.label))
                        .foregroundColor(Color(UIColor.systemBackground))
                        .frame(height: 40)
                    HStack{
                        Text("\(countBadge.symbol)")
                    .font(.custom("FontAwesome6Pro-Solid", size: 40))
                        Spacer()
                    Text("\(countBadge.text)")
                        .font(.custom("Courier", size: 12))
                    }
                    .foregroundColor(Color(UIColor.label))
                    .background(Color(UIColor.systemBackground))
                }
            } else {
                Text("\(countBadge.count) Stories")
                 .font(.custom("Courier", size: 50))
            }
            Spacer()
                .frame(height:10)
           
            }
            .frame(width: 300)
    }
}

struct CountAchievementsRow_Previews: PreviewProvider {
    static var previews: some View {
        List(countBadges) {
            currentCountBadge in
            VStack(alignment: .leading) {
            CountAchievementsRow(countBadge: currentCountBadge)
            }
    }    }
}
