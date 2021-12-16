/*
The top-level definition of the app.
*/

import SwiftUI

@main
struct AnimalFriendsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
