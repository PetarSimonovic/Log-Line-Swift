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
            VStack{
            HStack {
                Text(story.logline)
                    .frame(alignment: .leading)
                    .frame(width: 150)
                Spacer()
                    .frame(width: 40)
                Text(story.symbol).font(.custom("FontAwesome5Free-Solid", size: 50))
                    .frame(width: 150, alignment: .center)

              
            }
            .foregroundColor(Color(UIColor.label))
            .background(Color(UIColor.systemBackground))
               //            }
            }
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
