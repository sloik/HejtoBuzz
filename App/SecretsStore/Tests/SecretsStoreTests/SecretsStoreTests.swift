import XCTest
@testable import SecretsStore

final class SecretsStoreTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SecretsStore().text, "Hello, World!")
    }
}
