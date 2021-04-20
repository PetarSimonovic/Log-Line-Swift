//
//  Classic.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/04/2021.
//

import SwiftUI

struct Classic: View {
    @State var title: String = ""
    @State var story = chooseStory()
    @State var status = "Check"

    var body: some View {
            Text(story.logline)
            TextField("What's the story?", text: $title)
                .multilineTextAlignment(.center)
            Button(action: {
                if title.lowercased() == story.title.lowercased() {
                stories.append(story)
                self.status = "Added to Library"
               }
            }){
            Text(status)
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color(UIColor.label))
        }

}
}

struct Classic_Previews: PreviewProvider {
    static var previews: some View {
        Classic()
    }
}
