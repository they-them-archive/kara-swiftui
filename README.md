# Kara SwiftUI

This application, a mood tracker, is a study project for the iOS bootcamp. This is one of [two implementations](https://github.com/they-them-archive/kara-uikit).

## Implementation Details

This app uses `@AppStorage` to sync data with `UserDefaults`. Since `UserDefaults` does not support arrays of custom types, the array of Mood structs are encoded and decoded into a JSON string to be stored in `UserDefaults`.

## Screenshot

![Artboard](https://user-images.githubusercontent.com/6799989/101291106-6d395380-37d4-11eb-9a6d-afeeab036850.png)
