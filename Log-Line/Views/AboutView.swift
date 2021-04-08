//
//  AboutView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 04/04/2021.
//

import SwiftUI

struct AboutView: View {
    
    var body: some View {
     
        VStack(alignment: .leading) {
            Text("A log line is a summary of a story. It needs to be concise - no more than one or two sentences - yet cover the narrative's central characters, story arc and conflicts.")
            Spacer()
                .frame(height: 10)
            
            Text("Most importantly, it must hook the reader in.")
            Spacer()
                .frame(height: 10)

            Text("Story Mode generates short, compelling fictional scenarios designed to serve as a framework for narrative development.")
            Spacer()
                .frame(height: 10)
            Text("Excuse Mode creates tenable explanations that can be used to justify offensive, abberrant or inconsiderate behaviour.")
            Spacer()
                .frame(height: 10)
            HStack (spacing: 0) {
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
                Text("to lock words.")
            }
        }
        .padding(50)
        .font(.custom("Courier", size: 16.5))

    }
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
