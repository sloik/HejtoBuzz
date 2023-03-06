
import Foundation

public struct FeaturesFactory {
    var _inMemoryStore: InMemoryStore

    init(
        inMemoryStore: FeaturesFactory.InMemoryStore
    ) {
        self._inMemoryStore = inMemoryStore
    }
}

extension FeaturesFactory {
    var inMemoryStore: InMemoryStore { _inMemoryStore }
}

// MARK: - Mock

extension FeaturesFactory {
    static var prod: Self {
        .init(
            inMemoryStore: .prod
        )
    }

    static var mock: Self {
        .init(
            inMemoryStore: .mock
        )
    }
}
