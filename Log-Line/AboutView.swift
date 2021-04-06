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
            Text("A log line is a summary of a story. It is used to pitch screenplays and novels to producers or publishers.")
            Spacer()
                .frame(height: 10)
            
            Text("It needs to be concise - no more than one or two sentences - yet cover the narrative's central characters and conflicts. Most importantly, it needs to hook the reader in.")
            Spacer()
                .frame(height: 10)

            Text("Story Mode generates short, compelling fictional scenarios designed to serve as a framework for narrative development.")
            Spacer()
                .frame(height: 10)
            Text("Excuse Mode creates tenable explanations that can be used to justify offensive, abberrant or inconsiderate behaviour")
            Spacer()
                .frame(height: 10)
            HStack (spacing: 0) {
                Text("Tap on ")
                Text("nouns")
                    .background(Color .black)
                    .foregroundColor(Color .white)
                Text(", ")
                Text("verbs")
                    .background(Color .black)
                    .foregroundColor(Color .white)
                Text(" and ")
            }
            HStack {
                Text("adjectives")
                    .background(Color .black)
                    .foregroundColor(Color .white)
                Text("to lock words.")
                
            }
        }
            
        .padding(50)
        .font(.custom("Courier", size: 14))

    }
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
