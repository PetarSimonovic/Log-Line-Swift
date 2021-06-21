//
//  saveStories.swift
//  Log-Line
//
//  Created by Petar Simonovic on 26/04/2021.
//

import Foundation


var stories: [Story] = []

func loadStories() {
    
      
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
    pruneStoryBank(&storyBank)
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
        pruneStoryBank(&storyBank)

    } catch {
        print("Unable to Encode Array of Stories (\(error))")
    }
 }

func deleteStories() {
    UserDefaults.resetStandardUserDefaults()
}

func pruneStoryBank(_ storyCollection: inout [Story], _ stories: [Story] = stories ) {
    
    for story in stories {
        if let collected = storyCollection.firstIndex(where: {$0.title == story.title}) {
        storyCollection.remove(at: collected)
         }
     }
}


