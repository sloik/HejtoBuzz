import XCTest
@testable import HejDTO
import CustomDump

final class PostsCommentUpdateTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/put_post_comment
        let jsonString =
        """
        {
            "content": "string",
            "images": [
                {
                    "uuid": "string",
                    "position": 0
                }
            ],
            "parent": "string"
        }
        """
        // Act
        let result = try JSONDecoder().decode(Posts.CommentUpdate.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.CommentUpdate(
            content: .string,
            images: [Posts.CommentUpdate.Images(
                uuid: .string,
                position: 0
            )
            ],
            parent: .string
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
