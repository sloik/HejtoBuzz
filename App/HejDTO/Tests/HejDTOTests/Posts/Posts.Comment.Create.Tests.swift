import XCTest
@testable import HejDTO
import CustomDump

final class PostsCommentCreateTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/post_post_comment
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
        let result = try JSONDecoder().decode(Posts.CommentCreate.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.CommentCreate(
            content: .string,
            images: [Posts.CommentCreate.Images(
                uuid: .string,
                position: 0
            )
            ],
            parent: .string)
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
