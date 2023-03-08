
import Foundation

struct HejtoAPI {

    var _auth: Auth

    init(
        auth: Auth
    ) {
        self._auth = auth
    }
}

// MARK: - Nice API

extension HejtoAPI {

}

// MARK: - Factory

extension HejtoAPI {
    static var mock: Self {
        .init(
            auth: .mock
        )
    }

    static var prod: Self {
        .init(
            auth: .prod
        )
    }
}

// MARK: - ERROR

extension HejtoAPI {
    enum Err: Error {
        case notHttpResponse
        case expectedHttp200(code: Int)
    }
}
