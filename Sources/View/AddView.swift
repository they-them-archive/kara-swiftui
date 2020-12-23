// Copyright 2020 @they-them.

import SwiftUI

struct AddView: View {
    
    // MARK: Properties
    @Binding var showingAdd: Bool
    @Binding var dataSource: DataSource
    
    // MARK: View
    var body: some View {
        VStack {
            // Create button.
            Button(action: {
                // Initialize new mood with options.
                dataSource.add(mood: .init(type: .great, createdAt: Date()))
                // Toggle showingAdd variable to dismiss modal view.
                showingAdd.toggle()
            }, label: {
                // Create mood button with title and color.
                MoodButton(title: "Great", color: .checkInEvergreen)
            }).padding()
            // Create button.
            Button(action: {
                // Initialize new mood with options.
                dataSource.add(mood: .init(type: .good, createdAt: Date()))
                // Toggle showingAdd variable to dismiss modal view.
                showingAdd.toggle()
            }, label: {
                // Create mood button with title and color.
                MoodButton(title: "Good", color: .checkInGreen)
            }).padding()
            // Create button.
            Button(action: {
                // Initialize new mood with options.
                dataSource.add(mood: .init(type: .alright, createdAt: Date()))
                // Toggle showingAdd variable to dismiss modal view.
                showingAdd.toggle()
            }, label: {
                // Create mood button with title and color.
                MoodButton(title: "Alright", color: .checkInYellow)
            }).padding()
            // Create button.
            Button(action: {
                // Initialize new mood with options.
                dataSource.add(mood: .init(type: .bad, createdAt: Date()))
                // Toggle showingAdd variable to dismiss modal view.
                showingAdd.toggle()
            }, label: {
                // Create mood button with title and color.
                MoodButton(title: "Bad", color: .checkInOrange)
            }).padding()
            // Create button.
            Button(action: {
                // Initialize new mood with options.
                dataSource.add(mood: .init(type: .horrible, createdAt: Date()))
                // Toggle showingAdd variable to dismiss modal view.
                showingAdd.toggle()
            }, label: {
                // Create mood button with title and color.
                MoodButton(title: "Horrible", color: .checkInRed)
            }).padding()
        }
    }
}
