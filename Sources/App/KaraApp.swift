// Copyright 2020 @they-them.

import SwiftUI

@main
struct KaraApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(dataSource: DataSource()).accentColor(.royalPink)
        }
    }
}
