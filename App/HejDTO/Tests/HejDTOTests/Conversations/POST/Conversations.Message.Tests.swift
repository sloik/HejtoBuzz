import XCTest
@testable import HejDTO
import CustomDump

final class CreateConversationMessageTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        // Arrange

        // json from: https://docs.hejto.pl/#tag/Conversations/operation/get_conversation_messages
        
        let jsonString =
        """
        {
          "attachments": [
            {
              "uuid": "string",
              "position": 0
            }
          ],
          "content": "string"
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Conversations.Message.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Conversations.Message(
            attachments: [Conversations.Message.Attachment(
                uuid: .string,
                position: 0)],
            content: .string)

        XCTAssertNoDifference(result, expectedResult)
    }
}
