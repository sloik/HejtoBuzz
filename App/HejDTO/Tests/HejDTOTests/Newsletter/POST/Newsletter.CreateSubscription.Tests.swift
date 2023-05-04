import XCTest
@testable import HejDTO
import CustomDump

final class NewsletterCreateSubscriptionTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        let jsonString = """
        {
            "email": "string"
        }
        """
        
        // Act
        let result = try JSONDecoder()
            .decode(
                Newsletter.CreateSubscription.self,
                from: jsonString.data(using: .utf8)!
            )
        let expectedResult = Newsletter.CreateSubscription(email: .string)
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
