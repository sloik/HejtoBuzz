import XCTest
@testable import HejDTO
import CustomDump

final class PostsCreateReportTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/post_post_report
        let jsonString =
        """
        {
            "errors": {
                "field_name": [
                    "This field cannot be empty"
                ],
                "another_field_name": [
                    "This field should be a number"
                ]
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Posts.CreateReport.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.CreateReport(
            reason: Posts.CreateReport.Reason.inappropriateContent.rawValue
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
