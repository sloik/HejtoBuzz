import XCTest
@testable import HejDTO
import CustomDump

final class AchievementsDetailsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // Arrange
        
        // json form: https://docs.hejto.pl/#tag/Achievements/operation/get_achievements
        let jsonString =
        """
        {
            "name": "string",
            "slug": "string",
            "description": "string",
            "icon": {
                "alt": "string",
                "uuid": "string"
            },
            "_links": {
                "self": {
                    "href": "string"
                }
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Achievements.Details.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Achievements.Details(
            name: .string
            , slug: .string
            , description: .string
            , icon: Image(
                alt: .string
                , uuid: .string
            ), links: Achievements.Details.Links(
                selfLink: Link(
                    href: .string
                )
            )
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
