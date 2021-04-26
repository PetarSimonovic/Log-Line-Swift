//
//  Classic.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/04/2021.
//

import SwiftUI

struct Classic: View {
    
    @State var title: String = ""
    @State var status = "Check"
    @State var story = chooseStory()
    @State var symbol = ""
    @State var question = "What's the Story"
    
    // Create and Write Array of Strings
        
    var body: some View {
        

        VStack(spacing: 0.0) {
        VStack(alignment: .leading) {
            Text(self.story.logline)
        }
            Spacer()
        VStack (alignment: .center) {
            TextField(self.question, text: $title)
                .multilineTextAlignment(.center)
                Button(action: {
                if title.lowercased() == story.title.lowercased() {
                    if story.collected(story) == false {
                stories.append(story)
                    }
                self.title = ""
                self.question = self.story.title
                self.symbol = self.story.symbol
                self.status = "Added to Library"
                saveStories()
               }
            }){
            Text(status)
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color(UIColor.label))
                .frame(alignment: .center)
        }
        }
        }
            .frame(width: 280, height: 150)
            .font(.custom("Courier", size: 16.5))


}
}

