//
//  ClassicsView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 11/04/2021.
//

import SwiftUI

struct LibraryView: View {
    
    
    var body: some View {
        List(stories) { currentStory in
            VStack {
                StoryRow(story: currentStory)
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
