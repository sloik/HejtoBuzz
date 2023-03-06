
import SecretsStore

public private(set) var Current = World.mock

public struct World {

    var _secureStore: SecretsStoreType
    var _useCases: UseCaseFactory

    init(
        secureStore: SecretsStoreType,
        useCases: UseCaseFactory
    ) {
        self._secureStore = secureStore
        self._useCases = useCases
    }
}

public extension World {

    /// Gets current secret store.
    var secureStore: SecretsStoreType { _secureStore }

    var useCases: UseCaseFactory { _useCases }
}

// MARK: - Mock

public extension World {

    static func takeOff(secureStore: SecretsStoreType) {
        Current = World(
            secureStore: secureStore,
            useCases: .prod
        )
    }

    static var mock: World {
        .init(
            secureStore: MockSecureStore(),
            useCases: .mock
        )
    }
}
