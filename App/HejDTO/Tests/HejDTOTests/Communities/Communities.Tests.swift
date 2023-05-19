
import XCTest
@testable import HejDTO
import CustomDump

final class CommunitiesTests: XCTestCase {

    func test_parsingJsonExample() throws {

        let jsonString = """
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
                "slug": "string",
                "status": "string",
                "description": "string",
                "avatar": {
                  "alt": "string",
                  "uuid": "string"
                },
                "background": {
                  "alt": "string",
                  "uuid": "string"
                },
                "primitive": true,
                "controversial": true,
                "nsfw": true,
                "war_content": true,
                "category": {
                  "name": "string",
                  "slug": "string",
                  "num_posts": 0,
                  "primary_color": "string"
                },
                "num_members": 0,
                "num_posts": 0,
                "is_member": true,
                "is_blocked": true,
                "member_role": "string",
                "last_visit": "2019-08-24T14:15:22Z",
                "new_posts": 0,
                "primary_color": "string",
                "updated_at": "2019-08-24T14:15:22Z",
                "_links": {
                  "self": {
                    "href": "string"
                  }
                }
              }
            ]
          }
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Communities.Categories.self,
                from: jsonString.data(using: .utf8)!
            )

        let expectedResult = Communities.Categories(
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
            embedded: Communities.Categories.Embedded(
                items: [
                    Communities.Categories.Embedded.Item(
                        name: .string,
                        slug: .string,
                        numPosts: 0,
                        primaryColor: .string
                    )
                ]
            )
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}
