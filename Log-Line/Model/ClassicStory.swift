//
//  checkFilm.swift
//  Log-Line
//
//  Created by Petar Simonovic on 10/04/2021.
//

import Foundation
import SwiftUI
    
var stories: [Story] = []


func chooseStory() -> Story {
    return storyBank[makeChoice(storyBank.count)]
}


