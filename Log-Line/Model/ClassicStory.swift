//
//  checkFilm.swift
//  Log-Line
//
//  Created by Petar Simonovic on 10/04/2021.
//

import Foundation
import SwiftUI
    

    func chooseStory() -> [String] {
    
        return storyBank[makeChoice(storyBank.count)]
    }
