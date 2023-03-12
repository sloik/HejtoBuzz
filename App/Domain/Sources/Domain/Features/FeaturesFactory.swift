
import Foundation
import SecretsStore

public struct FeaturesFactory {
    var _inMemoryStore: InMemoryStore
    var _secrets: SecretsStoreType

    init(
        secrets: SecretsStoreType,
        inMemoryStore: FeaturesFactory.InMemoryStore
    ) {
        self._secrets = secrets
        self._inMemoryStore = inMemoryStore
    }
}

extension FeaturesFactory {
    var inMemoryStore: InMemoryStore { _inMemoryStore }

    /// Gets current secret store.
    public var secrets: SecretsStoreType { _secrets }
}

// MARK: - Mock

extension FeaturesFactory {
    static func prod(secrets: SecretsStoreType) -> Self {
        .init(
            secrets: secrets,
            inMemoryStore: .prod
        )
    }

    static var mock: Self {
        .init(
            secrets:  MockSecureStore(),
            inMemoryStore: .mock
        )
    }
}
