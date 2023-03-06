
import SwiftUI
import Domain
import SecretsStore

@main
struct HejtoBuzzApp: App {

    init() {
        World.takeOff(secureStore: MockSecureStore())
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
