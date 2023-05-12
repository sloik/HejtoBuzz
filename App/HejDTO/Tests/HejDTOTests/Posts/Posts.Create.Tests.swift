import XCTest
@testable import HejDTO
import CustomDump

final class PostsCreateTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/post_post
        let jsonString =
        """
        {
            "content": "string",
            "tags": [
                {
                    "name": "string"
                }
            ],
            "images": [
                {
                    "uuid": "string",
                    "position": 0
                }
            ],
            "nsfw": false
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Posts.Create.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.Create(
            content: .string,
            tags: [Posts.Create.Tag(
                name: .string
            )
            ],
            images: [Posts.Create.Images(
                uuid: .string,
                position: 0
            )
            ],
            nsfw: false
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
