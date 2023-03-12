
import SwiftUI
import Domain
import SecretsStore

@main
struct HejtoBuzzApp: App {

    init() {
        World.takeOff(secrets: ProductionSecretsStore())
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
