//
//  saveStories.swift
//  Log-Line
//
//  Created by Petar Simonovic on 26/04/2021.
//

import Foundation

let userDefaults = UserDefaults.standard

var stories: [Story] = userDefaults.object(forKey: "stories") as? [Story] ?? []


func saveStories() {
  
  userDefaults.set(stories, forKey: "stories")

}
