//
//  ContentView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 03/04/2021.
//

import SwiftUI
import Foundation

let logLine = LogLine()




struct ContentView: View {
    
    let fullAchievements = countAchievements()
    let playerAchievements = countAchievements(stories)

        
    @State var displayText: [String] = []
    @State var library: [String] = []

    @State var nounOne = ""

    @State var classicLogLine = "Test text"
            
    @StateObject var posAdjButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var negAdjButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var nounButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var firstVerbButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var posAdjButton2 = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var nounButton2 = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var negAdjButton2 = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var nounButton3 = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var thirdVerbButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var nounButton4 = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var apologyVerbButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var apologyNounButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var excuseVerbButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var excuseAdjButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var excuseNounButton = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var excuseAdjButton2 = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var excuseVerbButton2 = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var excuseNounButton2 = logLineButton(buttonState: false, holdText: "", newText: "")

    @StateObject var excuseVerbButton3 = logLineButton(buttonState: false, holdText: "", newText: "")


    @StateObject var excuseNounButton3 = logLineButton(buttonState: false, holdText: "", newText: "")
    
    @State var intro = true
    @State var classic = false
    @State var story = false
    @State var excuse = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack (spacing: 0) {
                        Logo()
                       
                    }.padding(4)
                    .border(Color(UIColor.label), width: 4)
                    
                    Spacer()
                        .frame(height: 10)
                    LogoText()
                }
                Spacer()
                    .frame(height: 100)
                
                if intro == true {
                   IntroText()
                    
                } else if story == true {
                  storyMode
                }
                else if excuse == true {
                  excuseMode
                } else if classic == true {
                  Classic()
                }
                
                Spacer()
                    .frame(height: 100)


                HStack (alignment: .center){
                    
                    storyModeButton
                    excuseModeButton
                    
                }
                Spacer()
                    .frame(height: 10)
                HStack (alignment: .center) {
                    TypeWriter()
                  

                }
            
            }
            Spacer()
        }.accentColor(Color(UIColor.label))
        
    }


}





struct TypeWriter: View {
    var body: some View {
        NavigationLink(destination: SettingsView()) {
            Text("\u{f8e7}")
                .font(.custom("FontAwesome6Pro-Solid", size: 40))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(UIColor.label))
                .background(Color(UIColor.systemBackground))
                .font(.custom("Courier", size: 16.5))
                .padding(5)
                .border(Color .black, width: 0)
        }
    }
}


struct IntroText: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text("Press Story Mode to create a work of fiction or use Excuse Mode to justify your actions")
                .padding()
                .font(.custom("Courier", size: 16.5))
                .frame(height: 150)
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
