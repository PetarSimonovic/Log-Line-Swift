//
//  ExcuseMode.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/05/2021.
//

import SwiftUI

extension ContentView {
    
    var excuseMode: some View {
    
    VStack(alignment: .leading) {
        HStack {
        Text("Sorry I")
        logLineButtonView(button: apologyVerbButton)

    }
    HStack {
        logLineButtonView(button: apologyNounButton)
    }
        
    HStack {
        Text("but I had to")

        }
        
    HStack{
        logLineButtonView(button: excuseVerbButton)
        logLineButtonView(button: excuseAdjButton)
    }
    
    HStack {
        logLineButtonView(button: excuseNounButton)

        Text("because")
        
    }
        HStack {
            logLineButtonView(button: excuseAdjButton2)
            logLineButtonView(button: excuseNounButton2)
        }
        HStack {
           
    
            logLineButtonView(button: excuseVerbButton2)
            logLineButtonView(button: excuseNounButton3)
      
        }
        Spacer()

    }
    .font(.custom("Courier", size: 16.5))
    .frame(height: 150, alignment: .leading)

}
    
    var excuseModeButton: some View {
        Button(action: {
                self.displayText = logLine.generateExcuse()
                excuse = true
                intro = false
                story = false
                classic = false
            apologyVerbButton.newText = self.displayText[0]
            apologyNounButton.newText = self.displayText[1]
            excuseVerbButton.newText = self.displayText[2]
            excuseAdjButton.newText = self.displayText[3]
            excuseNounButton.newText = self.displayText[4]
            excuseAdjButton2.newText = self.displayText[5]
            excuseNounButton2.newText = self.displayText[6]
            excuseVerbButton2.newText = self.displayText[7]
            excuseNounButton3.newText = self.displayText[8]
                                
        }) {
            Text("Excuse Mode")
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color(UIColor.label))
                .font(.custom("Courier", size: 16.5))
                .padding(3)
            
        
        }

    }
}

//struct ExcuseMode_Previews: PreviewProvider {
//    static var previews: some View {
//        ExcuseMode()
//    }
//}
