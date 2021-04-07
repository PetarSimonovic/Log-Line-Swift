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
    
    @State var apologyButton = false
    @State var holdApology = ""
    
    @State var excuseVerbButton = false
    @State var holdExcuseVerb = ""
    
    @State var excuseAdjButton = false
    @State var holdExcuseAdj = ""
    
    @State var excuseNounButton = false
    @State var holdExcuseNoun = ""
    
    @State var excuseAdjButton2 = false
    @State var holdExcuseAdj2 = ""
    
    @State var excuseVerbButton2 = false
    @State var holdExcuseVerb2 = ""
    
    @State var excuseNounButton2 = false
    @State var holdExcuseNoun2 = ""
    
    @State var excuseVerbButton3 = false
    @State var holdExcuseVerb3 = ""
    
    @State var excuseNounButton3 = false
    @State var holdExcuseNoun3 = ""

    @StateObject var testButton = logLineButton(buttonState: false, holdText: "", newText: "")
    
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
                    VStack(alignment: .leading) {HStack {
                        Text("Sorry I")
                        Button(action: {
                                apologyButton = buttonControl(apologyButton)
                                holdApology = displayText[0]
                        }) {
                        if apologyButton == false {
                        Text(displayText[0])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdApology)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                    }
                        }


                    }
                    HStack {
                        Text("but I had to")
                        Button(action: {
                                excuseVerbButton = buttonControl(excuseVerbButton)
                                holdExcuseVerb = displayText[1]
                        }) {
                        if excuseVerbButton == false {
                        Text(displayText[1])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdExcuseVerb)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                    }
                        }

                    }
                    HStack {
                        Button(action: {
                            excuseAdjButton = buttonControl(excuseAdjButton)
                                holdExcuseAdj = displayText[2]
                        }) {
                        if excuseAdjButton == false {
                        Text(displayText[2])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdExcuseAdj)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                    }
                        }
                        Button(action: {
                            excuseNounButton = buttonControl(excuseNounButton)
                                holdExcuseNoun = displayText[3]
                        }) {
                        if excuseNounButton == false {
                        Text(displayText[3])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdExcuseNoun)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                    }
                        }

                    }
                    HStack {
                        Text("because")
                        Button(action: {
                            excuseAdjButton2 = buttonControl(excuseAdjButton2)
                                holdExcuseAdj2 = displayText[4]
                        }) {
                        if excuseAdjButton2 == false {
                        Text(displayText[4])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdExcuseAdj2)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                    }
                        }
                        
                    }
                    
                    HStack{
                        Button(action: {
                            excuseNounButton2 = buttonControl(excuseNounButton2)
                                holdExcuseNoun2 = displayText[5]
                        }) {
                        if excuseNounButton2 == false {
                        Text(displayText[5])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdExcuseNoun2)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                    }
                        }
                        Button(action: {
                            excuseVerbButton3 = buttonControl(excuseVerbButton3)
                                holdExcuseVerb3 = displayText[6]
                        }) {
                        if excuseVerbButton3 == false {
                        Text(displayText[6])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdExcuseVerb3)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                    }
                        }

                    }
                    
                    HStack {
                        
                        Button(action: {
                            excuseNounButton3 = buttonControl(excuseNounButton3)
                                holdExcuseNoun3 = displayText[7]
                        }) {
                        if excuseNounButton3 == false {
                        Text(displayText[7])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdExcuseNoun3)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                    }
                        }

                    }



                    }
                    .font(.custom("Courier", size: 17))
                    .frame(width: 500, height: 150, alignment: .leading)
                    .offset(x: 100)

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

