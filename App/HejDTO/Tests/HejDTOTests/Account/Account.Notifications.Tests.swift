
import XCTest
@testable import HejDTO
import CustomDump

final class AccountNotificationsTests: XCTestCase {

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
                    "status": "string",
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
                    "resource_action": "string",
                    "content": "string",
                    "uuid": "string",
                    "created_at": "2019-08-24T14:15:22Z",
                    "read_at": "2019-08-24T14:15:22Z",
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
                Account.Notifications.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Account.Notifications(
            page: 0,
            limit: 0,
            pages: 0,
            total: 0,
            links: Account.Notifications.Links(
                selfLink: .string,
                first: .string,
                last: .string,
                next: .string,
                previous: .string
            ),
            embedded: Account.Notifications.Embedded(
                items: [
                    .init(
                        status: .string,
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
                        resourceAction: .string,
                        content: .string,
                        uuid: .string,
                        createdAt: .date2019_08_24T141522Z,
                        readAt: .date2019_08_24T141522Z,
                        links: Common.SelfLink(
                            selfLink: Common.Link(href: .string))
                    )
                ]
            )
        )

        XCTAssertNoDifference(result, expectedResult)
    }

}
