//
//  logLineButton.swift
//  Log-Line
//
//  Created by Petar Simonovic on 13/04/2021.
//

import SwiftUI





struct logLineButtonView: View {
    @ObservedObject var button: logLineButton

    var body: some View {
        Button(action: {
            button.buttonState = buttonControl(button.buttonState)
            button.holdText = button.newText
        }) {
            if button.buttonState == false {
                Text(button.newText)
                    .foregroundColor(Color(UIColor.label))
                    .background(Color(UIColor.systemBackground))
        } else {
            Text(button.holdText)
                .foregroundColor(Color(UIColor.systemBackground))
                .background(Color(UIColor.label))
    }
        }
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

