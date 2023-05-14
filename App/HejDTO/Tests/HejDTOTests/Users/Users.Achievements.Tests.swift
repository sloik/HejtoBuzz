import XCTest
@testable import HejDTO
import CustomDump

final class UsersAchievementsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Users/operation/get_user_achievements
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
                        "achievement": {
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
                        },
                        "created_at": "2019-08-24T14:15:22Z"
                    }
                ]
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Users.Achievements.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Users.Achievements(
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
            embedded: Users.Achievements.Embedded(
                items: [Users.Achievements.Embedded.Item(
                    achievement: Users.Achievements.Embedded.Item.Achievement(
                        name: .string,
                        slug: .string,
                        description: .string,
                        icon: Common.Image(
                            alt: .string,
                            uuid: .string
                        ),
                        links: Common.SelfLink(
                            selfLink: Common.Link(
                                href: .string
                            )
                        )
                    ),
                    createdAt: .date2019_08_24T141522Z
                )
                ]
            )
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
