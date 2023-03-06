
import SecretsStore

public private(set) var Current = World.mock

public struct World {

    var _secureStore: SecretsStoreType

    init(secureStore: SecretsStoreType) {
        self._secureStore = secureStore
    }
}

public extension World {

    /// Gets current secret store.
    var secureStore: SecretsStoreType { _secureStore }
}

// MARK: - Mock

public extension World {

    static func takeOff(secureStore: SecretsStoreType) {
        Current = World(secureStore: secureStore)
    }

    static var mock: World {
        .init(secureStore: MockSecureStore())
    }
}
