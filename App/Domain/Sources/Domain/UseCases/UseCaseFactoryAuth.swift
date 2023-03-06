
import Foundation

extension UseCaseFactory {


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
