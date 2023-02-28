import XCTest
@testable import RestAPI

final class RestAPITests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(RestAPI().text, "Hello, World!")
    }
}
