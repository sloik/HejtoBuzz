import XCTest
@testable import HejDTO
import CustomDump

final class AchievementsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // Arrange
        
        // json form: https://docs.hejto.pl/#tag/Achievements/operation/get_achievements
        let jsonString =
        """
        {
            "page": 0,
            "limit": 0,
            "pages": 0,
            "total": 0,
            "_links": {
                "self": "string",
                "first": "string",
                "last": "string",
                "next": "string",
                "previous": "string"
            },
            "_embedded": {
                "items": [
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
                ]
            }
        }
        """
        // Act
        let result = try JSONDecoder().decode(Achievements.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Achievements(
            page: 0,
            limit: 0,
            pages: 0,
            total: 0,
            links: Common.Links(
                selfLink: .string,
                first: .string,
                last: .string,
                next: .string,
                previous: .string
            ),
            embedded: Achievements.Embedded(
                items: [Achievements.Embedded.Items(
                    name: .string,
                    slug: .string,
                    description: .string,
                    icon: Common.Image(
                        alt: .string,
                        uuid: .string
                    ),
                    links: Achievements.Embedded.Items.Links(
                        selfLink: Common.Link(
                            href: .string
                        )
                    )
                )
                ]
            )
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
