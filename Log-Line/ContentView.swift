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
    
    @State var posAdjButton = false
    @State var holdPosAdj = ""
    
    @State var negAdjButton = false
    @State var holdNegAdj = ""
    
    @State var nounButton = false
    @State var holdNoun = ""
    
    @State var firstVerbButton = false
    @State var holdFirstVerb = ""
    
    @State var posAdjButton2 = false
    @State var holdPosAdj2 = ""
    
    @State var nounButton2 = false
    @State var holdNoun2 = ""
    
    
    @State var negAdjButton2 = false
    @State var holdNegAdj2 = ""
    
    
    @State var nounButton3 = false
    @State var holdNoun3 = ""
    
    @State var intro = true
    
    var body: some View {
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
                    .font(.custom("Courier", size: 16))
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
                    .font(.custom("Courier", size: 18))
                    .frame(height: 150)
                
            } else {
                VStack {
                HStack {
                    Button(action: {
                            posAdjButton = buttonControl(posAdjButton)
                            holdPosAdj = displayText[0]
                    }) {
                    if posAdjButton == false {
                    Text(displayText[0])
                        .background(Color .white)
                        .foregroundColor(Color .black)
                    } else {
                        Text(holdPosAdj)
                            .background(Color .black)
                            .foregroundColor(Color .white)
                    }
                    }
                    Text("but")
                    Button(action: {
                            negAdjButton = buttonControl(negAdjButton)
                            holdNegAdj = displayText[0]
                    }) {
                    if negAdjButton == false {
                    Text(displayText[1])
                        .background(Color .white)
                        .foregroundColor(Color .black)
                    } else {
                        Text(holdNegAdj)
                            .background(Color .black)
                            .foregroundColor(Color .white)
                    }
                    }

                    
                }
                HStack {
                    Button(action: {
                            nounButton = buttonControl(nounButton)
                            holdNoun = displayText[2]
                    }) {
                    if nounButton == false {
                    Text(displayText[2])
                        .background(Color .white)
                        .foregroundColor(Color .black)
                    } else {
                        Text(holdNoun)
                            .background(Color .black)
                            .foregroundColor(Color .white)
                    }
                    }
                    Text("must")
                    Button(action: {
                            firstVerbButton = buttonControl(firstVerbButton)
                            holdFirstVerb = displayText[3]
                    }) {
                    if firstVerbButton == false {
                    Text(displayText[3])
                        .background(Color .white)
                        .foregroundColor(Color .black)
                    } else {
                        Text(holdFirstVerb)
                            .background(Color .black)
                            .foregroundColor(Color .white)
                    }
                    }
                }
                    HStack {
                        Button(action: {
                                posAdjButton2 = buttonControl(posAdjButton2)
                                holdPosAdj2 = displayText[4]
                        }) {
                        if posAdjButton2 == false {
                        Text(displayText[4])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdPosAdj2)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                        }
                        }
                        Button(action: {
                                nounButton2 = buttonControl(nounButton2)
                                holdNoun2 = displayText[5]
                        }) {
                        if nounButton2 == false {
                        Text(displayText[5])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdNoun2)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                        }
                        }
                    }
                    HStack {
                        Text("before")
                        Button(action: {
                                negAdjButton2 = buttonControl(negAdjButton2)
                                holdNegAdj2 = displayText[6]
                        }) {
                        if negAdjButton2 == false {
                        Text(displayText[6])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdNegAdj2)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                        }
                        }
                        
                    }
                    HStack {
                        Button(action: {
                                nounButton3 = buttonControl(nounButton3)
                                holdNoun3 = displayText[7]
                        }) {
                        if nounButton3 == false {
                        Text(displayText[7])
                            .background(Color .white)
                            .foregroundColor(Color .black)
                        } else {
                            Text(holdNoun3)
                                .background(Color .black)
                                .foregroundColor(Color .white)
                        }
                        }
                    }
                }  .padding()
                .font(.custom("Courier", size: 18))
                .frame(height: 150)
                
            }
        
            Spacer()
                .frame(height: 50)

            HStack {
                Button(action: {
                        self.displayText = logLine.generateLogLine()
                        intro = false
                }) {
                    Text("Story Mode")
                        .background(Color .black)
                        .foregroundColor(Color.white)
                        .font(.custom("Courier", size: 16))
                        .padding(3)

                }
                Button(action: {
                        self.displayText = logLine.generateExcuse()
                    intro = false
                    
                }) {
                    Text("Excuse Mode")
                        .background(Color .black)
                        .foregroundColor(Color.white)
                        .font(.custom("Courier", size: 16))
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
                    .font(.custom("Courier", size: 16))
                    .padding(5)
                    .border(Color .black, width: 2)
            }
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
