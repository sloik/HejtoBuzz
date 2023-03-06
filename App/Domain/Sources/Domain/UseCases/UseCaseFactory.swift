
import Foundation

public struct UseCaseFactory {

}


// MARK: - Mock

extension UseCaseFactory {

    static var prod: Self {
        .mock
    }

    static var mock: Self {
        .init()
    }
}
