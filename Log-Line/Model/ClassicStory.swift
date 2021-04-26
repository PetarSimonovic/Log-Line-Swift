//
//  checkFilm.swift
//  Log-Line
//
//  Created by Petar Simonovic on 10/04/2021.
//

import Foundation
import SwiftUI
    

func chooseStory() -> Story {
    let story = storyBank[makeChoice(storyBank.count)]
    if stories.contains(story) {
       return chooseStory()
    }
    else {
        return story
    }
}


