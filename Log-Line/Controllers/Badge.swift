//
//  Badge.swift
//  Log-Line
//
//  Created by Petar Simonovic on 19/05/2021.
//

import Foundation

struct Badge: Identifiable, Codable, Hashable {
        
    var id = UUID()
    var name: String
    var symbol: String

}
