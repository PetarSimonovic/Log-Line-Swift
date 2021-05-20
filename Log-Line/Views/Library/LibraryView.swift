//
//  ClassicsView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 11/04/2021.
//

import SwiftUI

struct LibraryView: View {
    
    
    var body: some View {
        VStack (alignment: .center) {
            Text("Collected Works")
        }
        .font(.custom("Courier", size: 18.5))
        .foregroundColor(Color(UIColor.systemBackground))
              .background(Color(UIColor.label))
        Spacer()
        
        VStack (alignment: .center) {
            Text("\(stories.count) / \(storyBank.count)")
        }
        
        .font(.custom("Courier", size: 18.5))
        .foregroundColor(Color(UIColor.label))
              .background(Color(UIColor.systemBackground))        
        Spacer()
            .frame(height: 10)

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
