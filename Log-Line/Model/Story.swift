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
}
