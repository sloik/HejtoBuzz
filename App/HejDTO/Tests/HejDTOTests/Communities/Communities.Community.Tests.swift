
import XCTest
@testable import HejDTO
import CustomDump

final class CommunitiesCommunityTests: XCTestCase {

    func test_parsingJsonExample() throws {

        let jsonString = """
        {
          "name": "string",
          "description": "string",
          "rules": "string",
          "avatar": "string",
          "background": "string",
          "category": "string",
          "topics": [
            {
              "name": "string"
            }
          ],
          "post_types": [
            "discussion"
          ]
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Communities.Community.self,
                from: jsonString.data(using: .utf8)!
            )

        let expectedResult = Communities.Community(
            name: .string,
            description: .string,
            rules: .string,
            avatar: .string,
            background: .string,
            category: .string,
            topics: [
                Communities.Community.Topic(name: .string)
            ],
            postTypes: [
                .discussion
            ]
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}
