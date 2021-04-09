//
//  AboutView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 04/04/2021.
//

import SwiftUI

struct AboutView: View {
    
    var body: some View {
     
        VStack {
            VStack(alignment: .leading) {
                Text("A log line is a summary of a story. Writers use log lines to help them focus on the story beats, and to pitch ideas to producers or publishers.\n\nA log line must be concise - no more than one or two sentences - yet cover the narrative's central characters, story arc and conflicts. Most importantly, it must hook the reader in.\n\nStory Mode generates short, compelling fictional scenarios designed to serve as a framework for narrative development.\n\nExcuse Mode creates tenable explanations that will justify offensive, abberrant or inconsiderate behaviour.")
                Spacer()
                    .frame(height: 10)
                HStack (spacing: 0) {
                    Text("")
                    Text("Tap on ")
                    Text("nouns")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .background(Color(UIColor.label))
                    Text(", ")
                    Text("verbs")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .background(Color(UIColor.label))
                    Text(" and ")
                }
                HStack {
                    Text("adjectives")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .background(Color(UIColor.label))
                    Text("to lock words")
                }
                HStack {
                    Text("into your scenario and direct your narrative.")
                }
            }
            .padding(50)
            .font(.custom("Courier", size: 14.5))
            
            Text("Version 1.0")
                .font(.custom("Courier", size: 10.5))
        }
        

    }
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
