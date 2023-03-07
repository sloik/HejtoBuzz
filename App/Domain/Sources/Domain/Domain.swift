
import SecretsStore

public private(set) var Current = World.mock

public struct World {

    var _secureStore: SecretsStoreType
    var _useCases: UseCaseFactory
    var _features: FeaturesFactory

    init(
        secureStore: SecretsStoreType,
        useCases: UseCaseFactory,
        features: FeaturesFactory
    ) {
        self._secureStore = secureStore
        self._useCases = useCases
        self._features = features
    }
}

public extension World {

    /// Gets current secret store.
    var secureStore: SecretsStoreType { _secureStore }

    var useCases: UseCaseFactory { _useCases }

    var features: FeaturesFactory { _features }
}

// MARK: - Mock

public extension World {

    static func takeOff(secureStore: SecretsStoreType) {
        Current = World(
            secureStore: secureStore,
            useCases: .prod,
            features: .prod
        )
    }

    static var mock: World {
        .init(
            secureStore: MockSecureStore(),
            useCases: .mock,
            features: .mock
        )
    }
}
