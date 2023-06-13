import XCTest
@testable import HejDTO
import CustomDump

final class CreateConversationTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        // Arrange

        // json from: https://docs.hejto.pl/#tag/Conversations/operation/post_conversation
        
        let jsonString =
        """
        {
          "participants": [
            {
              "username": "string"
            }
          ]
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Conversations.Conversation.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Conversations.Conversation(
            participants: [Conversations.Conversation.Participant(
                username: .string)])
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
