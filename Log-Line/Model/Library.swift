
//  Library.swift
//  Log-Line
//
//  Created by Petar Simonovic on 15/04/2021.


import Foundation
import SwiftUI


struct Library {
    
    var collection: [String] = []
    
    mutating func update(_ title: String) {
        collection.append(title)
    }
    
    }
