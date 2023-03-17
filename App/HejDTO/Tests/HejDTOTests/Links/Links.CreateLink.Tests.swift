import XCTest
@testable import HejDTO
import CustomDump

final class LinksCreateLinkTests: XCTestCase {

    func test_parsingJsonExample() throws {

        let jsonString = """
        {
          "url": "string"
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Links.CreateLink.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Links.CreateLink(url: .string)

        XCTAssertNoDifference(result, expectedResult)
    }

}

