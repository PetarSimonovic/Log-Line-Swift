//
//  Log_LineApp.swift
//  Log-Line
//
//  Created by Petar Simonovic on 03/04/2021.
//

import SwiftUI

@main
struct Log_LineApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{loadStories()}

        }
    }
}
