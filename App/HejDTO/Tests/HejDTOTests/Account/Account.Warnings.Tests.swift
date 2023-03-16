import XCTest
@testable import HejDTO
import CustomDump

final class AccountWarningsTests: XCTestCase {

    func test_parsingJsonExample() throws {

        // Arrange
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
                "reason": "string",
                "author": {
                  "username": "string",
                  "sex": "string",
                  "avatar": {
                    "alt": "string",
                    "uuid": "string"
                  },
                  "background": {
                    "alt": "string",
                    "uuid": "string"
                  },
                  "status": "string",
                  "controversial": true,
                  "current_rank": "string",
                  "current_color": "string",
                  "verified": true,
                  "sponsor": true,
                  "created_at": "2019-08-24T14:15:22Z",
                  "_links": {
                    "self": {
                      "href": "string"
                    },
                    "follows": {
                      "href": "string"
                    }
                  }
                },
                "uuid": "string",
                "created_at": "2019-08-24T14:15:22Z",
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
        let result = try JSONDecoder().decode(Account.Warnings.self, from: jsonString.data(using: .utf8)!)

        // Assert
        let expectedResult = Account.Warnings(
            page: 0,
            limit: 0,
            pages: 0,
            total: 0,
            links: Account.Warnings.Links(
                selfLink: .string,
                first: .string,
                last: .string,
                next: .string,
                previous: .string
            ),
            embedded: Account.Warnings.Embedded(
                items: [
                    Account.Warnings.Embedded.Item(
                        reason: .string,
                        author: Account.Warnings.Embedded.Item.Author(
                            username: .string,
                            sex: .string,
                            avatar: Image(alt: .string, uuid: .string),
                            background: Image(alt: .string, uuid: .string),
                            status: .string,
                            controversial: true,
                            currentRank: .string,
                            currentColor: .string,
                            verified: true,
                            sponsor: true,
                            createdAt: .date2019_08_24T141522Z,
                            links: Account.Warnings.Embedded.Item.Author.Links(
                                selfLink: Link(href: .string),
                                follows: Link(href: .string)
                            )
                        ),
                        uuid: .string,
                        createdAt: .date2019_08_24T141522Z,
                        links: Account.Warnings.Embedded.Item.Links(
                            selfLink: Link(href: .string)
                        )
                    )
                ]
            )
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}
