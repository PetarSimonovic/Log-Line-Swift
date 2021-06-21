//
//  SettingsView.swift
//  LogLine
//
//  Created by Petar Simonovic on 21/06/2021.
//

import SwiftUI

struct SettingsView: View {
    
    @State var buttonText: String = "Reset Game"
    @State var confirm: Bool = false
    @State var reset: Bool  = false
    
    var body: some View {
        Button(action: {
                if confirm == false {
                buttonText = "Remove all Collected Works and Achievements?"
                    confirm = true
                } else if confirm == true && reset == false {
                    storyBank = masterStoryBank
                    stories.removeAll()
                    deleteStories()
                    reset = true
                } else if confirm == true && reset == true {
                    buttonText = "Collection reset complete"
                }
        }) {
            Text(buttonText)
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color(UIColor.label))
                .font(.custom("Courier", size: 16.5))
                .padding(3)
            
        
        }    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
