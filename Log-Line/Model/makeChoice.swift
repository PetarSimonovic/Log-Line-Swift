//
//  makeChoice.swift
//  Log-Line
//
//  Created by Petar Simonovic on 10/04/2021.
//

import Foundation

func makeChoice (_ bank: Int) -> Int {
    return Int.random(in: 0...bank - 1)
}
