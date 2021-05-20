//
//  Story.swift
//  Log-Line
//
//  Created by Petar Simonovic on 20/04/2021.
//

import Foundation
import SwiftUI

struct Story: Identifiable, Codable, Hashable {
        
    var id = UUID()
    var title: String
    var logline: String
    var writer: String
    var year: String
    var fact: String
    var symbol: String
    var genre: String

}

func collected(_ story: Story) -> Bool {
    return stories.contains(story)
}
