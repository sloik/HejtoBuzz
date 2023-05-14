
import XCTest
@testable import HejDTO
import CustomDump

final class TagsTests: XCTestCase {

    func test_parsingJsonExample() throws {

        let jsonString =
        """
        {
          "page": 0,
          "limit": 0,
          "pages": 0,
          "total": 0,
          "_links": {
            "self": "string",
            "first": "string",
            "last": "string",
            "next": "string",
            "previous": "string"
          },
          "_embedded": {
            "items": [
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
            ]
          }
        }
        """

        // Act
        let result = try JSONDecoder().decode(Tags.self, from: jsonString.data(using: .utf8)!)

        // Assert
        let expectedResult = Tags(
            page: 0,
            limit: 0,
            pages: 0,
            total: 0,
            links: Common.Links(
                selfLink: .string,
                first: .string,
                last: .string,
                next: .string,
                previous: .string
            ),
            embedded: Tags.Embedded(
                items: [
                    Tags.Embedded.Item(
                        name: .string,
                        controversial: true,
                        warContent: true,
                        nsfw: true,
                        numFollows: 0,
                        numPosts: 0,
                        isFollowed: true,
                        isBlocked: true,
                        links: Tags.Embedded.Item.Links(
                            selfLink: Common.Link(href: .string),
                            follows: Common.Link(href: .string),
                            blocks: Common.Link(href: .string)
                        )
                    )
                ]
            )
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}

