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
    
    @State var thirdVerbButton = false
    @State var holdThirdVerb = ""
    
    @State var nounButton4 = false
    @State var holdNoun4 = ""
    
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
                        .font(.custom("Courier", size: 14))
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

                        
                    }
                    HStack {
                        Button(action: {
                                negAdjButton = buttonControl(negAdjButton)
                                holdNegAdj = displayText[1]
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
                    }
                        HStack {
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
                        }
                        
                        HStack {
                            
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
                            Text("before")
                        }
                        HStack {
                            
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
                        HStack {
                           
                            Button(action: {
                                    thirdVerbButton = buttonControl(thirdVerbButton)
                                    holdThirdVerb = displayText[8]
                            }) {
                            if thirdVerbButton == false {
                            Text(displayText[8])
                                .background(Color .white)
                                .foregroundColor(Color .black)
                            } else {
                                Text(holdThirdVerb)
                                    .background(Color .black)
                                    .foregroundColor(Color .white)
                            }
                            }
                            Button(action: {
                                    nounButton4 = buttonControl(nounButton4)
                                    holdNoun4 = displayText[9]
                            }) {
                            if nounButton4 == false {
                            Text(displayText[9])
                                .background(Color .white)
                                .foregroundColor(Color .black)
                            } else {
                                Text(holdNoun4)
                                    .background(Color .black)
                                    .foregroundColor(Color .white)
                        }
                            }
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
                    }) {
                        Text("Story Mode")
                            .background(Color .black)
                            .foregroundColor(Color.white)
                            .font(.custom("Courier", size: 14))
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
                            .font(.custom("Courier", size: 14))
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
