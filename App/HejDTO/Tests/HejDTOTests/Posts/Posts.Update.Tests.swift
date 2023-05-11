import XCTest
@testable import HejDTO
import CustomDump

final class PostsUpdateTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/put_post
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
        let result = try JSONDecoder().decode(Posts.Update.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.Update(
            content: .string,
            tags: [Posts.Update.Tag(
                name: .string
            )
            ],
            images: [Posts.Update.Images(
                uuid: .string,
                position: 0
            )
            ],
            nsfw: false
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
