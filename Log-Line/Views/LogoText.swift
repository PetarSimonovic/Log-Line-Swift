//
//  LogoText.swift
//  Log-Line
//
//  Created by Petar Simonovic on 13/04/2021.
//

import SwiftUI

struct LogoText: View {
    var body: some View {
        Text("High-Concept Stories \n Plausible Excuses")
            .font(.custom("Courier", size: 16.5))
            .multilineTextAlignment(.center)
            .background(Color(UIColor.label))
            .foregroundColor(Color(UIColor.systemBackground))
            .allowsTightening(true)    }
}

struct LogoText_Previews: PreviewProvider {
    static var previews: some View {
        LogoText()
    }
}
