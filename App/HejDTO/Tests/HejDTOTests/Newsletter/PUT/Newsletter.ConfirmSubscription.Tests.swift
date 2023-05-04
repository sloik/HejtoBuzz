import XCTest
@testable import HejDTO
import CustomDump

final class NewsletterConfirmSubscriptionTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        let jsonString = """
        {
            "status": "string"
        }
        """
        
        // Act
        let result = try JSONDecoder()
            .decode(
                Newsletter.ConfirmSubscription.self,
                from: jsonString.data(using: .utf8)!
            )
        let expectedResult = Newsletter.ConfirmSubscription(status: .string)
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
