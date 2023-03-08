
import SecretsStore

public private(set) var Current = World.mock

public struct World {


    var _useCases: UseCaseFactory
    var _features: FeaturesFactory

    init(
        useCases: UseCaseFactory,
        features: FeaturesFactory
    ) {
        self._useCases = useCases
        self._features = features
    }
}

public extension World {

    var useCases: UseCaseFactory { _useCases }

    var features: FeaturesFactory { _features }
}

// MARK: - Mock

public extension World {

    static func takeOff(secureStore: SecretsStoreType) {
        Current = World(
            useCases: .prod,
            features: .prod(secureStore: secureStore)
        )
    }

    static var mock: World {
        .init(
            useCases: .mock,
            features: .mock
        )
    }
}
