//
//  StoryRow.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/04/2021.
//

import SwiftUI

struct StoryRow: View {
    
    
//    let fontawesomeReg = UIFont(name: "FontAwesome5Free-Regular", size: UIFont.labelFontSize)
//
//    let fontawesomeSol = UIFont(name: "FontAwesome5Free-Solid", size: UIFont.labelFontSize)

    
    var story: Story

    var body: some View {
        VStack (alignment: .leading) {
            Text(story.title)
                .foregroundColor(Color(UIColor.systemBackground))
                      .background(Color(UIColor.label))
            Spacer()
            VStack (alignment: .leading) {
                Text(story.writer)
                    .foregroundColor(Color(UIColor.label))
                          .background(Color(UIColor.systemBackground))
            }
            Spacer()
            VStack (alignment: .leading) {
                Text(story.year)
                    .foregroundColor(Color(UIColor.label))
                          .background(Color(UIColor.systemBackground))
            }
            Spacer()
            VStack{
            HStack {
                Text(story.logline)
                    .frame(width: 230, height: 130, alignment: .leading)
                Spacer()
                Text(story.symbol).font(.custom("FontAwesome6Pro-Solid", size: 50))
                    .frame(alignment: .center)

              
            }
            .foregroundColor(Color(UIColor.label))
            .background(Color(UIColor.systemBackground))
               //            }
            }
            VStack {
                Text(story.fact)
            }
        }
    }
}

struct StoryRow_Previews: PreviewProvider {
    static var previews: some View {
        List(storyBank) {
            currentStory in
            VStack(alignment: .leading) {
                StoryRow(story: currentStory)
            }
            .font(.custom("Courier", size: 16.5))
    }
}
}
