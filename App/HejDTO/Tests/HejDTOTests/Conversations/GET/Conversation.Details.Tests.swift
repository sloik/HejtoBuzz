import XCTest
@testable import HejDTO
import CustomDump

final class ConversationsDetailTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        // Arrange
        
        // json from: https://docs.hejto.pl/#tag/Conversations/operation/get_conversation
        
        let jsonString =
        """
        {
          "participants": [
            {
              "user": {
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
                "current_rank": "string",
                "current_color": "string",
                "verified": true,
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
              "read_at": "2019-08-24T14:15:22Z"
            }
          ],
          "last_message": {
            "content": "string",
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
              "current_rank": "string",
              "current_color": "string",
              "verified": true,
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
            "attachments": [
              {
                "alt": "string",
                "uuid": "string"
              }
            ],
            "uuid": "string",
            "created_at": "2019-08-24T14:15:22Z"
          },
          "is_read": true,
          "uuid": "string",
          "created_at": "2019-08-24T14:15:22Z",
          "updated_at": "2019-08-24T14:15:22Z",
          "_links": {
            "self": {
              "href": "string"
            }
          }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Conversations.Details.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Conversations.Details(
            participants: [Conversations.Details.Participant(
                user: Conversations.Details.Participant.Author(
                    username: .string,
                    sex: .string,
                    avatar: Common.Image(
                        alt: .string,
                        uuid: .string),
                    background: Common.Image(
                        alt: .string,
                        uuid: .string),
                    currentRank: .string,
                    currentColor: .string,
                    verified: true,
                    createdAt: .date2019_08_24T141522Z,
                    links: Conversations.Details.Participant.Author.AuthorLinks(
                        selfLink: Common.Link(href: .string),
                        follows: Common.Link(href: .string))),
                readAt: .date2019_08_24T141522Z)],
            lastMessage: Conversations.Details.LastMessage(
                content: .string,
                author: Conversations.Details.LastMessage.Author(
                    username: .string,
                    sex: .string,
                    avatar: Common.Image(
                        alt: .string,
                        uuid: .string),
                    background: Common.Image(
                        alt: .string,
                        uuid: .string),
                    currentRank: .string,
                    currentColor: .string,
                    verified: true,
                    createdAt: .date2019_08_24T141522Z,
                    links: Conversations.Details.LastMessage.Author.AuthorLinks(
                        selfLink: Common.Link(href: .string),
                        follows: Common.Link(href: .string))),
                attachments: [Common.Image(
                    alt: .string,
                    uuid: .string)],
                uuid: .string,
                createdAt: .date2019_08_24T141522Z),
            isRead: true,
            uuid: .string,
            createdAt: .date2019_08_24T141522Z,
            updatedAt: .date2019_08_24T141522Z,
            links: Common.SelfLink(
                selfLink: Common.Link(href: .string)))
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
