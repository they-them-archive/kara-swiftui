// Copyright 2020 @they-them.

import SwiftUI

struct MoodButton: View {
    
    // MARK: Properties
    let title: String
    let color: Color
    
    // MARK: View
    var body: some View {
        Text(title)
            // Set font weight to bold.
            .fontWeight(.bold)
            // Set padding to 50.
            .padding(50)
            // Set frame to 200x50.
            .frame(width: 200, height: 50)
            // Set background color.
            .background(color)
            // Clip shape to rounded rectangle with 25 corner radius.
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            // Set text color to white.
            .foregroundColor(.white)
    }
}
