//
//  SettingsView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/05/2021.
//

import SwiftUI

struct SettingsLibraryView: View {
    var body: some View {
        VStack {
        Spacer()
        List {
        AboutButton()
        Spacer()
        LibraryButton()
        Spacer()
        AchievementsButton()
        Spacer()
        SettingsButton()
            }
            Spacer()
        }
        .frame(width: 260)
        .foregroundColor(Color(UIColor.label))
        .background(Color(UIColor.systemBackground))
        .font(.custom("Courier", size: 16.5))
        .padding(5)
        .border(Color .black, width: 0)
    }
}

struct SettingsLibrary_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLibraryView()
    }
}
