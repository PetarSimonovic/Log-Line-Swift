//
//  Log_LineApp.swift
//  Log-Line
//
//  Created by Petar Simonovic on 03/04/2021.
//

import SwiftUI
import Foundation

@main
struct LogLineApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{loadStories()}

        }
    }
}
