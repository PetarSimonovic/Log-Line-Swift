//
//  ContentView.swift
//  Log-Line
//
//  Created by Petar Simonovic on 03/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    let logLine = LogLine()
    
    @State var displayText = "Press Story Mode to create a work of fiction or use Excuse Mode to justify your actions"
    
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
            
            Text(displayText)
                .padding()
                .font(.custom("Courier", size: 18))
                .frame(height: 150)

            Spacer()
                .frame(height: 50)

            HStack {
                Button(action: {self.displayText = logLine.generateLogLine()}) {
                    Text("Story Mode")
                        .background(Color .black)
                        .foregroundColor(Color.white)
                        .font(.custom("Courier", size: 16))
                        .padding(3)

                }
                Button(action: {self.displayText = logLine.generateExcuse()}) {
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
