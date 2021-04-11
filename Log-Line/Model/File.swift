//
//  File.swift
//  Log-Line
//
//  Created by Petar Simonovic on 10/04/2021.
//

import Foundation

struct  Classics {

    let classics: [String] = Array

func updateClassics(_ classicLogLine: String) -> String {
   return classics.append(classicLogLine)
   return classicLogLine
}
    
    func getClassics () -> [String] {
        return classics
    }

}
