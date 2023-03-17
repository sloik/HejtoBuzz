import XCTest
@testable import HejDTO
import CustomDump

final class AccountWarningTests: XCTestCase {

    func test_parsingJsonExample() throws {

        // Arrange
        let jsonString =
        """
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
        """

        // Act
        let result = try JSONDecoder().decode(Account.Warning.self, from: jsonString.data(using: .utf8)!)

        // Assert
        let expectedResult = Account.Warning(
            author: Account.Warning.Author(
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
                links: Account.Warning.Author.Links(
                    selfLink: Link(href: .string),
                    follows: Link(href: .string)
                )
            ),
            links: Account.Warning.Links(
                selfLink: Link(href: .string)
            ),
            reason: .string,
            uuid: .string,
            createdAt: .date2019_08_24T141522Z
        )


        XCTAssertNoDifference(result, expectedResult)
    }
}
