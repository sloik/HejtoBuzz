
import SecretsStore

public private(set) var Current = World.mock

public struct World {

    var _api: HejtoAPI
    var _useCases: UseCaseFactory
    var _features: FeaturesFactory

    init(
        api: HejtoAPI,
        useCases: UseCaseFactory,
        features: FeaturesFactory
    ) {
        self._api = api
        self._useCases = useCases
        self._features = features
    }
}

extension World {

    public var useCases: UseCaseFactory { _useCases }

    public var features: FeaturesFactory { _features }
}

// MARK: - Mock

public extension World {

    static func takeOff(secrets: SecretsStoreType) {
        Current = World(
            api: .prod,
            useCases: .prod,
            features: .prod(secrets: secrets)
        )
    }

    static var mock: World {
        .init(
            api: .mock,
            useCases: .mock,
            features: .mock
        )
    }
}
