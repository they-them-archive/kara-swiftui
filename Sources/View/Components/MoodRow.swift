// Copyright 2020 @they-them.

import SwiftUI

struct MoodRow: View {
    
    // MARK: Properties
    let mood: Mood
    
    // MARK: View
    var body: some View {
        // Create VStack.
        VStack(alignment: .leading) {
            // Set first label to type capitalized with headline font.
            Text(mood.type.rawValue.capitalized).font(.headline)
            // Add spacer of height 5.
            Spacer().frame(height: 5)
            // Create string from created at data with footnote font.
            Text(Formatter.string(from: mood.createdAt)).font(.footnote)
        }
    }
}
