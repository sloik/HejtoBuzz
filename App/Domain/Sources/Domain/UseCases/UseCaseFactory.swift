
import Foundation

public struct UseCaseFactory {

    var _auth: Auth

    init(
        auth: UseCaseFactory.Auth
    ) {
        self._auth = auth
    }
}

extension UseCaseFactory {

    var auth: Auth { _auth }
}


// MARK: - Mock

extension UseCaseFactory {

    static var prod: Self {
        .mock
    }

    static var mock: Self {
        .init(auth: .mock)
    }
}
