
import XCTest
@testable import HejDTO
import CustomDump

final class TagsDetailsTests: XCTestCase {

    func test_parsingJsonExample() throws {

        let jsonString =
        """
        {
          "name": "string",
          "controversial": true,
          "war_content": true,
          "nsfw": true,
          "num_follows": 0,
          "num_posts": 0,
          "is_followed": true,
          "is_blocked": true,
          "_links": {
            "self": {
              "href": "string"
            },
            "follows": {
              "href": "string"
            },
            "blocks": {
              "href": "string"
            }
          }
        }
        """

        // Act
        let result = try JSONDecoder().decode(Tags.Details.self, from: jsonString.data(using: .utf8)!)

        // Assert
        let expectedResult = Tags.Details(
            name: "string",
            controversial: true,
            warContent: true,
            nsfw: true,
            numFollows: 0,
            numPosts: 0,
            isFollowed: true,
            isBlocked: true,
            links: Tags.Details.Links(
                selfLink: Common.Link(href: "string"),
                follows: Common.Link(href: "string"),
                blocks: Common.Link(href: "string")
            )
        )
        

        XCTAssertNoDifference(result, expectedResult)
    }
}

