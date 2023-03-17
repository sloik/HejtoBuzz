import XCTest
@testable import HejDTO
import CustomDump

final class ResponseMessageTests: XCTestCase {

    func test_parsingJsonExample() throws {

        let jsonString = """
        {
          "message": "string"
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Response.Message.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Response.Message(message: .string)

        XCTAssertNoDifference(result, expectedResult)
    }

}

