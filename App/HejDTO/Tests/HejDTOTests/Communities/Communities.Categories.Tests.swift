
import XCTest
@testable import HejDTO
import CustomDump

final class CommunitiesCategoriesTests: XCTestCase {

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
                "num_posts": 0,
                "primary_color": "string"
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
