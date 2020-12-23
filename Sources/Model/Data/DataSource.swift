// Copyright 2020 @they-them.

import Foundation
import SwiftUI

struct DataSource {
    
    // MARK: Properties
    // Intermediate object for storing moods for the UI.
    private var moods: [Mood] = []
    // App Storage via User Defaults.
    @AppStorage("entries", store: UserDefaults.standard) private var jsonString: String = "" {
        mutating didSet {
            moods = fetch()
        }
    }
    
    // MARK: Add
    mutating func add(mood: Mood) {
        // Get collection from User Defaults.
        var collection = fetch()
        // Insert new mood at index 0.
        collection.insert(mood, at: 0)
        // Persist collection to User Defaults.
        persist(collection: collection)
    }
    
    // MARK: Remove
    mutating func remove(indexSet: IndexSet) {
        // Get collection from User Defaults.
        var collection = fetch()
        // Remove mood via index set.
        collection.remove(atOffsets: indexSet)
        // Persist collection to User Defaults.
        persist(collection: collection)
    }
    
    // MARK: Fetch from UserDefaults
    func fetch() -> [Mood] {
        // Fetch collection from User Defaults using JSON string.
        return DataTransform.array(from: jsonString)
    }
    
    // MARK: Persist to UserDefaults
    mutating func persist(collection: [Mood]) {
        // Get JSON string from collection.
        if let newJsonString = DataTransform.jsonString(from: collection) {
            // Assign new JSON string to self.jsonString.
            self.jsonString = newJsonString
        }
    }
}
