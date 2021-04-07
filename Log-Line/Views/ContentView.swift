//
//  ContentView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 03/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    let logLine = LogLine()
    
    @State var displayText: [String] = []
    
    @State var nounOne = ""
        
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
    @State var story = false
    @State var excuse = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack (spacing: 0) {
                        Text("Log")
                            .multilineTextAlignment(.center)
                            .background(Color .black)
                            .foregroundColor(Color .white)
                            .font(.custom("Courier", size: 60))
                        Text("Line")
                            .multilineTextAlignment(.center)
                        .background(Color .white)
                        .foregroundColor(Color .black)
                        .font(.custom("Courier", size: 60))
                        
                       
                    }.padding(4)
                    .border(Color.black, width: 4)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("High-Concept Stories \n Plausible Excuses")
                        .font(.custom("Courier", size: 20))
                        .multilineTextAlignment(.center)
                        .background(Color .black)
                        .foregroundColor(Color .white)
                        .allowsTightening(true)
                }
                Spacer()
                    .frame(height: 50)
                
                if intro == true {
                    Text("Press Story Mode to create a work of fiction or use Excuse Mode to justify your actions")
                        .padding()
                        .font(.custom("Courier", size: 17))
                        .frame(height: 150)
                    
                } else if story == true {
                    VStack(alignment: .leading, spacing: 0.0) {
                    HStack {
                    logLineButtonView(button: posAdjButton)
                      
                        Text("but")


                    }
                    HStack {
                        logLineButtonView(button: negAdjButton)
                        logLineButtonView(button: nounButton)
                    }
                        HStack {
                        Text("must")
                        logLineButtonView(button: firstVerbButton)
                            logLineButtonView(button: posAdjButton2)
                        }
                        
                        HStack {
                            
                            logLineButtonView(button: nounButton2)
                            Text("before")
                        }
                        HStack {
                            
                            logLineButtonView(button: negAdjButton2)
                            logLineButtonView(button: nounButton3)
                        }
                        HStack {
                           
                            logLineButtonView(button: thirdVerbButton)
                            logLineButtonView(button: nounButton4)
                        }
                    
                        
                    } .font(.custom("Courier", size: 17))
                    .frame(width: 500, height: 150, alignment: .leading)
                    .offset(x: 100)
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
                        }
                        HStack {
                            logLineButtonView(button: excuseNounButton2)
                    
                            logLineButtonView(button: excuseVerbButton2)
                      
                        }
                        HStack {
                            logLineButtonView(button: excuseNounButton3)
                        }




                    }
                    .font(.custom("Courier", size: 19))
                    .frame(width: 500, height: 150, alignment: .leading)
                    .offset(x: 120)

                }
            
                Spacer()
                    .frame(height: 50)

                HStack {
                    Button(action: {
                            self.displayText = logLine.generateLogLine()
                            story = true
                            intro = false
                            excuse = false
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


                    }) {
                        Text("Story Mode")
                            .background(Color .black)
                            .foregroundColor(Color.white)
                            .font(.custom("Courier", size: 20))
                            .padding(3)
                        

                    }
                    Button(action: {
                            self.displayText = logLine.generateExcuse()
                            excuse = true
                            intro = false
                            story = false
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
                            .background(Color .black)
                            .foregroundColor(Color.white)
                            .font(.custom("Courier", size: 20))
                            .padding(3)
                        
                    
                    }
                    
                }
                Spacer()
                    .frame(height: 10)
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                            .multilineTextAlignment(.center)
                            .background(Color .white)
                            .foregroundColor(Color .black)
                            .font(.custom("Courier", size: 14))
                            .padding(5)
                            .border(Color .black, width: 2)
                    }
                
            
            }
        }
        
    }


}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class logLineButton: ObservableObject {
    
    @Published var buttonState: Bool
    @Published var holdText: String
    @Published var newText: String
    
    init(buttonState: Bool, holdText: String, newText: String) {
        self.buttonState = buttonState
        self.holdText = holdText
        self.newText = newText
        }
}

struct logLineButtonView: View {
    @ObservedObject var button: logLineButton

    var body: some View {
        Button(action: {
            button.buttonState = buttonControl(button.buttonState)
            button.holdText = button.newText
        }) {
            if button.buttonState == false {
                Text(button.newText)
            .background(Color .white)
            .foregroundColor(Color .black)
        } else {
            Text(button.holdText)
                .background(Color .black)
                .foregroundColor(Color .white)
    }
        }
    }
}

