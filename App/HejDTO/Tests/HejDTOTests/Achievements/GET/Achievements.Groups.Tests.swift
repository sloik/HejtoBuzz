import XCTest
@testable import HejDTO
import CustomDump

final class AchievementsGroupsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
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
                ]
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Achievements.Groups.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Achievements.Groups(
            page: 0,
            limit: 0,
            pages: 0,
            total: 0,
            links: Achievements.Links(
                selfLink: .string,
                first: .string,
                last: .string,
                next: .string,
                previous: .string
            ),
            embedded: Achievements.Groups.Embedded(
                items: [Achievements.Groups.Embedded.Items(
                    name: .string,
                    achievements: [Achievements.Groups.Embedded.Items.Achievements(
                        name: .string,
                        slug: .string,
                        description: .string,
                        icon: Image(
                            alt: .string,
                            uuid: .string
                        )
                    )
                    ],
                    links: Achievements.Groups.Embedded.Items.Links(
                        selfLink: Link(
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
