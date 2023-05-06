import XCTest
@testable import HejDTO
import CustomDump

final class AchievementsGroupDetailsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Achievements/operation/get_achievement_group
        #warning(
        """
        The official documentation includes the property
        "icon": {}
        but I have modified it to follow the same format as the other properties, which is
        "icon": {
            "alt": "string",
            "uuid": "string"
        }

        """)
        
        let jsonString =
        """
        {
            "name": "string",
            "achievements": [
                {
                    "name": "string",
                    "slug": "string",
                    "description": "string",
                    "icon": {
                        "alt": "string",
                        "uuid": "string"
                    }
                }
            ],
            "_links": {
                "self": {
                    "href": "string"
                }
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Achievements.GroupDetails.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Achievements.GroupDetails(
            name: .string,
            achievements: [Achievements.GroupDetails.Achievements(
                name: .string,
                slug: .string,
                description: .string,
                icon: Image(
                    alt: .string,
                    uuid: .string
                )
            )
            ],
            links: Achievements.GroupDetails.Links(
                selfLink: Link(
                    href: .string
                )
            )
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
