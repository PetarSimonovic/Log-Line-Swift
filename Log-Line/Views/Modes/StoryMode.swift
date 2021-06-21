//
//  StoryMode.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/05/2021.
//

import SwiftUI

extension ContentView {
    var storyMode: some View {
        VStack {
        VStack(alignment: .leading, spacing: 0.0) {
        HStack {
        logLineButtonView(button: posAdjButton)
            Text("but")
            logLineButtonView(button: negAdjButton)

        }
        HStack {
            logLineButtonView(button: nounButton)
            Text("must")
            logLineButtonView(button: firstVerbButton)
        }
            HStack {
                logLineButtonView(button: posAdjButton2)
                logLineButtonView(button: nounButton2)
            }
            
        HStack {
            Text("before")
                logLineButtonView(button: negAdjButton2)
               
            }
            HStack {
                logLineButtonView(button: nounButton3)
               
                logLineButtonView(button: thirdVerbButton)
            }
            HStack {
                logLineButtonView(button: nounButton4)
            }

        }
            Spacer()
            
        } .font(.custom("Courier", size: 16.5))
        .frame(height: 155, alignment: .leading)    }
    
    var storyModeButton: some View {
        Button(action: {
            if makeChoice(5) == 1 && storyBank.isEmpty == false {
                classic = true
                story = false
                intro = false
                excuse = false
            } else {
                self.displayText = logLine.generateLogLine()
                story = true
                intro = false
                excuse = false
                classic = false
            posAdjButton.newText = self.displayText[0]
            negAdjButton.newText = self.displayText[1]
            nounButton.newText = self.displayText[2]
            firstVerbButton.newText = self.displayText[3]
            posAdjButton2.newText = self.displayText[4]
            nounButton2.newText = self.displayText[5]
            negAdjButton2.newText = self.displayText[6]
            nounButton3.newText = self.displayText[7]
            thirdVerbButton.newText = self.displayText[8]
            nounButton4.newText = self.displayText[9]
            }
        }) {
            Text("Story Mode")
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color(UIColor.label))
                .font(.custom("Courier", size: 16.5))
                .padding(3)
        }
    }
}

//struct StoryMode_Previews: PreviewProvider {
//    static var previews: some View {
//        StoryMode()
//    }
//}
