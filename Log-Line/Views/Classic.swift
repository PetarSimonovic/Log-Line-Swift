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
        .frame(height: 140, alignment: .center)

            Spacer()
        VStack (alignment: .center) {
            Text("What's The Story?")
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color(UIColor.label))
            TextEditor(text: $title)
                .multilineTextAlignment(.center)
                .border(Color(UIColor.label), width: 1)
                .frame(height: 50)
                Button(action: {
                hideKeyboard()
                if title.lowercased() == story.title.lowercased() {
                    if story.collected(story) == false {
                stories.append(story)
                saveStories()
                    }
                self.title = story.title
                self.symbol = self.story.symbol
                self.status = "Added to Library"
               }
            }){
            Text(status)
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color(UIColor.label))
                .frame(alignment: .center)
        }
        }
        }
            .frame(width: 280, height: 155)
            .font(.custom("Courier", size: 16.5))


}
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
