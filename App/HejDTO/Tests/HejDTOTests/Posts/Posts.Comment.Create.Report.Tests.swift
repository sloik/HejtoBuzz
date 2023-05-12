import XCTest
@testable import HejDTO
import CustomDump

final class PostsCommentCreateReportTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/post_post_comment_report
        let jsonString =
        """
        {
            "reason": "inappropriate-content"
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Posts.CommentCreateReport.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.CommentCreateReport(
            reason: Posts.CommentCreateReport.Reason.inappropriateContent.rawValue
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
