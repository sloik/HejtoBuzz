
import Foundation

extension UseCaseFactory {

    /// Use case for handling OAuth flow.
    struct Auth {

    }

}

extension UseCaseFactory.Auth {

    static var prod: Self {
        .mock
    }

    static var mock: Self {
        .init()
    }
}
