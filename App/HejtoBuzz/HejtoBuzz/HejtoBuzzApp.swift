
import SwiftUI
import Domain
import SecretsStore

@main
struct HejtoBuzzApp: App {

    init() {
        World.takeOff(secureStore: ProductionSecretsStore())
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
