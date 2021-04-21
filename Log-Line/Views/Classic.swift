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
                .frame(width: 280, height: 150, alignment: .leading)
            TextField("What's the story?", text: $title)
                .multilineTextAlignment(.center)
                .frame(width: 500)
            Button(action: {
                if title.lowercased() == story.title.lowercased() {
                    if story.collected(story) == false {
                stories.append(story)
                    }
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
