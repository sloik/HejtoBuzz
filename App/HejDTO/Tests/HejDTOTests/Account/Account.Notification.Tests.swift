
import XCTest
@testable import HejDTO
import CustomDump

final class AccountNotificationTests: XCTestCase {

    func test_parsingJsonExample() throws {

        let jsonString = """
            {
              "sender": {
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
              "type": "string",
              "resource_name": "string",
              "resource_action": "string"
            }
            """

        // Act
        let result = try JSONDecoder()
            .decode(
                Account.Notification.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Account.Notification(
            sender: Account.Notification.Sender(
                username: .string,
                sex: .string,
                avatar: Common.Image(alt: .string, uuid: .string),
                background: Common.Image(alt: .string, uuid: .string),
                status: .string,
                controversial: true,
                currentRank: .string,
                currentColor: .string,
                verified: true,
                sponsor: true,
                createdAt: .date2019_08_24T141522Z,
                links: Account.Notification.Sender.Links(
                    selfLink: Common.Link(href: .string),
                    follows: Common.Link(href: .string)
                )
            ),
            type: .string,
            resourceName: .string,
            resourceAction: .string
        )

        XCTAssertNoDifference(result, expectedResult)
    }

}
