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
            Text(displayText)
                .padding()
                .font(.custom("Courier", size: 18))
            Button(action: {self.displayText = logLine.generateLogLine()}) {
                Text("Generate LogLine")
                   .foregroundColor(Color.blue)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
