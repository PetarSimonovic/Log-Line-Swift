//
//  LibraryButtons.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/05/2021.
//

import SwiftUI


struct AboutButton: View {
    var body: some View {
        NavigationLink(destination: AboutView()) {
                Text("\u{f05a}")
                .font(.custom("FontAwesome6Pro-Solid", size: 30))
                Text("About")
        }
        .frame(alignment: .center)
        .foregroundColor(Color(UIColor.label))
        .background(Color(UIColor.systemBackground))
    }
}
//
//struct IntroText: View {
//    var body: some View {
//        VStack(alignment: .leading, spacing: 0.0) {
//            Text("Press Story Mode to create a work of fiction or use Excuse Mode to justify your actions")
//                .padding()
//                .font(.custom("Courier", size: 16.5))
//                .frame(height: 150)
//        }
//    }
//}
//
struct LibraryButton: View {
    var body: some View {
        NavigationLink(destination: LibraryView()) {
            Text("\u{f5db}")
                .font(.custom("FontAwesome6Pro-Solid", size: 30))
            Text("Collected Works")

        }
        .frame(alignment: .center)
        .foregroundColor(Color(UIColor.label))
        .background(Color(UIColor.systemBackground))
    }
       
}

struct AchievementsButton: View {
    var body: some View {
        NavigationLink(destination: AchievementsView()) {
            Text("\u{f2eb}")
                .font(.custom("FontAwesome6Pro-Solid", size: 30))
            Text("Achievements")


        }
        .frame(alignment: .center)
        .foregroundColor(Color(UIColor.label))
        .background(Color(UIColor.systemBackground))
      
    }
}

struct SettingsButton: View {
    var body: some View {
        NavigationLink(destination: SettingsView()) {
            Text("\u{f013}")
                .font(.custom("FontAwesome6Pro-Solid", size: 30))
            Text("Reset")

        }
        .frame(alignment: .center)
        .foregroundColor(Color(UIColor.label))
        .background(Color(UIColor.systemBackground))
    }
       
}

