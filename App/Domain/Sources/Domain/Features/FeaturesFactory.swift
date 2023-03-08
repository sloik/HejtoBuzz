
import Foundation
import SecretsStore

public struct FeaturesFactory {
    var _inMemoryStore: InMemoryStore
    var _secureStore: SecretsStoreType

    init(
        secureStore: SecretsStoreType,
        inMemoryStore: FeaturesFactory.InMemoryStore
    ) {
        self._secureStore = secureStore
        self._inMemoryStore = inMemoryStore
    }
}

extension FeaturesFactory {
    var inMemoryStore: InMemoryStore { _inMemoryStore }

    /// Gets current secret store.
    public var secureStore: SecretsStoreType { _secureStore }
}

// MARK: - Mock

extension FeaturesFactory {
    static func prod(secureStore: SecretsStoreType) -> Self {
        .init(
            secureStore: secureStore,
            inMemoryStore: .prod
        )
    }

    static var mock: Self {
        .init(
            secureStore:  MockSecureStore(),
            inMemoryStore: .mock
        )
    }
}
