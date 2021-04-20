//
//  ClassicsView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 11/04/2021.
//

import SwiftUI

struct LibraryView: View {
    
    
    var body: some View {
        VStack {
            Text("Collected Works")
        }
        .font(.custom("Courier", size: 16.5))

        List(stories) { currentStory in
            VStack(alignment: .leading) {
                StoryRow(story: currentStory)
            }
            .font(.custom("Courier", size: 16.5))
          
            
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
