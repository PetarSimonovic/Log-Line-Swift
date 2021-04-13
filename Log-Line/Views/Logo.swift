//
//  Logo.swift
//  Log-Line
//
//  Created by Petar Simonovic on 13/04/2021.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        Text("Log")
            .multilineTextAlignment(.center)
            .background(Color(UIColor.label))
            .foregroundColor(Color(UIColor.systemBackground))
            .font(.custom("Courier", size: 80))
        Text("Line")
            .multilineTextAlignment(.center)
        .background(Color(UIColor.systemBackground))
        .foregroundColor(Color(UIColor.label))
        .font(.custom("Courier", size: 80))
        
       
    }
   // .padding(4)
   // .border(Color(UIColor.label), width: 4)
    
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
