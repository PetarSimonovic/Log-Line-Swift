//
//  LibraryButtons.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/05/2021.
//

import SwiftUI


struct About: View {
    var body: some View {
        NavigationLink(destination: AboutView()) {
            Text("About")
                .multilineTextAlignment(.center)
                .foregroundColor(Color(UIColor.label))
                .background(Color(UIColor.systemBackground))
                .font(.custom("Courier", size: 16.5))
                .padding(5)
                .border(Color .black, width: 0)
        }
    }
}
//
//struct IntroText: View {
//    var body: some View {
//        VStack(alignment: .leading, spacing: 0.0) {
//            Text("Press Story Mode to create a work of fiction or use Excuse Mode to justify your actions")
//                .padding()
//                .font(.custom("Courier", size: 16.5))
//                .frame(height: 150)
//        }
//    }
//}
//
struct Library: View {
    var body: some View {
        NavigationLink(destination: LibraryView()) {
            Text("Library")
                .multilineTextAlignment(.center)
                .foregroundColor(Color(UIColor.label))
                .background(Color(UIColor.systemBackground))
                .font(.custom("Courier", size: 16.5))
                .padding(5)
                .border(Color .black, width: 0)
        }
    }
}


