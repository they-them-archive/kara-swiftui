// Copyright 2020 @they-them.

import SwiftUI

struct MainView: View {
    
    // MARK: Properties
    @State var dataSource: DataSource
    @State var showingAdd = false
    
    // MARK: View
    var body: some View {
        // Create navigation view.
        NavigationView {
            // Create list with dedicated ForEach loop.
            List {
                // Pull data from fetch function.
                ForEach(dataSource.fetch()) { mood in
                    // Create row with attached mood entry.
                    MoodRow(mood: mood)
                }.onDelete { (indexSet) in
                    // Call remove function with index set to delete object.
                    dataSource.remove(indexSet: indexSet)
                }
            // Set list style to Grouped.
            }.listStyle(GroupedListStyle())
            // Set navigation bar title to Check In.
            .navigationBarTitle("Check In")
            // Add trailing Add button.
            .navigationBarItems(trailing: Button(action: {
                // Toggle showingAdd binded variable.
                self.showingAdd.toggle()
            }) {
                // Create label with Add and font weight bold.
                Text("Add").fontWeight(.bold)
            }.sheet(isPresented: $showingAdd) {
                // Create view with showingAdd and dataSource bound variables.
                AddView(showingAdd: $showingAdd, dataSource: $dataSource)
            })
        }
    }
}
