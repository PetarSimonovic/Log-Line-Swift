//
//  StoryRow.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/04/2021.
//

import SwiftUI

struct StoryRow: View
{
    var story: Story

    var body: some View {
        VStack {
            Text(story.title)
            Text(story.logline)
        }
    }
}

struct StoryRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        StoryRow(story: stories[0] )
        StoryRow(story: stories[1] )
        }
    }
}
