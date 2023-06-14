import XCTest
@testable import HejDTO
import CustomDump

final class ConversationsMessageDetailsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        // Arrange
        
        // json from: https://docs.hejto.pl/#tag/Conversations/operation/get_conversation_message
        
        let jsonString =
        """
        {
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
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Conversations.ConversationMessageDetails.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Conversations.ConversationMessageDetails(
            content: .string,
            author: Conversations.ConversationMessageDetails.Author(
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
                links: Conversations.ConversationMessageDetails.Author.Links(
                    linksSelf: Common.Link(href: .string),
                    follows: Common.Link(href: .string))),
            attachments: [Common.Image(
                alt: .string,
                uuid: .string)],
            uuid: .string,
            createdAt: .date2019_08_24T141522Z)
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
