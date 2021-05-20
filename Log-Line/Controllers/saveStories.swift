//
//  saveStories.swift
//  Log-Line
//
//  Created by Petar Simonovic on 26/04/2021.
//

import Foundation


var stories: [Story] = []

func loadStories() {
    
    count.countAchievements()

      
    if let data = UserDefaults.standard.data(forKey: "stories") {
        do {
            // Create JSON Decoder
            let decoder = JSONDecoder()

            // Decode Note
            stories = try decoder.decode([Story].self, from: data)
            print("Loaded!")

        } catch {
            print("Unable to Decode Stories (\(error))")
        }
    }
}

  func saveStories() {
    
    do {
        // Create JSON Encoder
        let encoder = JSONEncoder()

        // Encode Note
        let data = try encoder.encode(stories)

        // Write/Set Data
        UserDefaults.standard.set(data, forKey: "stories")
        print("Saved!")

    } catch {
        print("Unable to Encode Array of Stories (\(error))")
    }
 }


