
import XCTest
@testable import HejDTO
import CustomDump

final class CommunitiesBlocksTests: XCTestCase {

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
                "user": {},
                "community": {},
                "id": 0,
                "created_at": "2019-08-24T14:15:22Z"
              }
            ]
          }
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Communities.Blocks.self,
                from: jsonString.data(using: .utf8)!
            )
        
        let expectedResult = Communities.Blocks(
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
            embedded: Communities.Blocks.Embedded(
                items: [
                    Communities.Blocks.Embedded.Item(
                        user: Communities.Blocks.Embedded.Item.User(),
                        community: Communities.Blocks.Embedded.Item.Community(),
                        id: 0,
                        createdAt: .date2019_08_24T141522Z
                    )
                ]
            )
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}
