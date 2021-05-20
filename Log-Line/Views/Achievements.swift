//
//  Achievements.swift
//  Log-Line
//
//  Created by Petar Simonovic on 19/05/2021.
//

import SwiftUI


struct Achievements: View {
    
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
struct Achievements_Previews: PreviewProvider {
    static var previews: some View {
        List(badgeBank) {
            currentBadge in
            VStack(alignment: .leading) {
                Achievements(badge: currentBadge)
            }
            .font(.custom("Courier", size: 16.5))
    }
        
    }
}

struct Achievements_Previews_2: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
