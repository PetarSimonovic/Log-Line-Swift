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

    @State var classic = false
    @State var intro = true
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
                    .frame(height: 50)
                
                if intro == true {
                    IntroText()
                    
                } else if story == true {
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
                    .frame(height: 150, alignment: .leading)
                    
                }
                else if excuse == true {
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

                } else if classic == true {
                    VStack {
                    if classic == true {
                       Classic()
                    }
                    }  .font(.custom("Courier", size: 16.5))
                    .frame(width: 250, height: 150, alignment: .leading)
                }
                
                
            
                Spacer()
                    .frame(height: 30)
                
               
                

                HStack {
                    Button(action: {
                        if makeChoice(5) == 1 {
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
                Spacer()
                    .frame(height: 10)
                About()
                NavigationLink(destination: LibraryView()) {
                    Text("Library")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(UIColor.label))
                        .background(Color(UIColor.systemBackground))
                        .font(.custom("Courier", size: 16.5))
                        .padding(5)
                        .border(Color .black, width: 2)
                }
                
            
            }
            Spacer()
        }.accentColor(Color(UIColor.label))
        
    }


}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}


struct About: View {
    var body: some View {
        NavigationLink(destination: AboutView()) {
            Text("About")
                .multilineTextAlignment(.center)
                .foregroundColor(Color(UIColor.label))
                .background(Color(UIColor.systemBackground))
                .font(.custom("Courier", size: 16.5))
                .padding(5)
                .border(Color .black, width: 2)
        }
    }
}

struct IntroText: View {
    var body: some View {
        Text("Press Story Mode to create a work of fiction or use Excuse Mode to justify your actions")
            .padding()
            .font(.custom("Courier", size: 16.5))
            .frame(height: 150)
    }
}

struct Classic: View {
    @State var title: String = ""
    @State var story = chooseStory()
    @State var status = "Check"

    var body: some View {
            Text(story.logline)
            TextField("What's the story?", text: $title)
                .multilineTextAlignment(.center)
            Button(action: {
                if title.lowercased() == story.title.lowercased() {
                stories.append(story)
                self.status = "Added to Library"
               }
            }){
            Text(status)
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color(UIColor.label))
        }

}
}
