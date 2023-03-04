
import SecretsStore

var Current = World.prod

public struct World {

    var _secureStore: SecretsStoreType

    init(secureStore: SecretsStoreType) {
        self._secureStore = secureStore
    }
}

public extension World {

    /// Gets current secret store.
    public var secureStore: SecretsStoreType { _secureStore }
}

// MARK: - Mock

public extension World {
    static var prod: World {
        .mock
    }

    static var mock: World {
        .init(secureStore: MockSecureStore())
    }
}
