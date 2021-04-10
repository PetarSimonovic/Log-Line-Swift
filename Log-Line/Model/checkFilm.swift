//
//  checkFilm.swift
//  Log-Line
//
//  Created by Petar Simonovic on 10/04/2021.
//

import Foundation

func checkFilm (_ logLine: [String]) -> String {
    
    print(logLine)
    
    switch logLine {
    case ["A brave", "timid", "hobbit", "destroy", "magic", "ring", "an evil", "necromancer", "takes over", "a world"]:
        return "The Lord of the Rings"
    case ["A loyal", "stubborn", "cowboy", "rescue", "brave", "astronaut", "a happy", "family", "leaves", "a house"]:
        return "Toy Story"
    case ["A loyal", "stubborn", "cowboy", "rescue", "brave", "astronaut", "a happy", "family", "leaves", "a house"]:
        return "Toy Story"
    default:
       return "Test Text"

    }
    
}

