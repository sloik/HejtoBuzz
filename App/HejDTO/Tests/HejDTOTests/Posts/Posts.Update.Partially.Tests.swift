import XCTest
@testable import HejDTO
import CustomDump

final class PostsUpdatePartiallyTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: hhttps://docs.hejto.pl/#tag/Posts/operation/patch_post
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
        let result = try JSONDecoder().decode(Posts.UpdatePartially.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.UpdatePartially(
            content: .string,
            tags: [Posts.UpdatePartially.Tag(
                name: .string
            )
            ],
            images: [Posts.UpdatePartially.Images(
                uuid: .string,
                position: 0
            )
            ],
            nsfw: false
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
