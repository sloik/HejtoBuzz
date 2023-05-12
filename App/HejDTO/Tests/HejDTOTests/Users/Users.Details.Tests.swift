import XCTest
@testable import HejDTO
import CustomDump

final class UsersDetailsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Users/operation/get_user
        let jsonString =
        """
        {
            "username": "string",
            "sex": "string",
            "description": "string",
            "city": "string",
            "avatar": {
                "alt": "string",
                "uuid": "string"
            },
            "background": {
                "alt": "string",
                "uuid": "string"
            },
            "status": "string",
            "controversial": true,
            "current_rank": "string",
            "current_color": "string",
            "verified": true,
            "sponsor": true,
            "num_follows": 0,
            "num_posts": 0,
            "num_comments": 0,
            "num_unread_notifications": 0,
            "num_unread_conversations": 0,
            "num_community_members": 0,
            "is_followed": true,
            "is_blocked": true,
            "achievements": [
                {
                    "achievement": {
                        "name": "string",
                        "slug": "string",
                        "description": "string",
                        "icon": {
                            "alt": "string",
                            "uuid": "string"
                        },
                        "created_at": "2019-08-24T14:15:22Z",
                        "_links": {
                            "self": {
                                "href": "string"
                            }
                        }
                    },
                    "created_at": "2019-08-24T14:15:22Z"
                }
            ],
            "created_at": "2019-08-24T14:15:22Z",
            "_links": {
                "self": {
                    "href": "string"
                },
                "follows": {
                    "href": "string"
                }
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Users.Details.self, from: jsonString.data(using: .utf8)!)
        
        
        // Assert
        let expectedResult = Users.Details(
            username: .string,
            sex: .string,
            description: .string,
            city: .string,
            avatar: Common.Image(
                alt: .string,
                uuid: .string
            ),
            background: Common.Image(
                alt: .string,
                uuid: .string
            ),
            status: .string,
            controversial: true,
            currentRank: .string,
            currentColor: .string,
            verified: true,
            sponsor: true,
            numFollows: 0,
            numPosts: 0,
            numComments: 0,
            numUnreadNotifications: 0,
            numUnreadConversations: 0,
            numCommunityMembers: 0,
            isFollowed: true,
            isBlocked: true,
            achievements: [Users.Details.AchievementItem(
                achievement: Users.Details.AchievementItem.Achievement(
                    name: .string,
                    slug: .string,
                    description: .string,
                    icon: Common.Image(
                        alt: .string,
                        uuid: .string
                    ),
                    createdAt: .date2019_08_24T141522Z,
                    links: Common.SelfLink(
                        selfLink: Common.Link(
                            href: .string
                        )
                    )
                ),
                createdAt: .date2019_08_24T141522Z
            )
            ],
            createdAt: .date2019_08_24T141522Z,
            links: Users.Details.UserProfileLinks(
                selfLink: Common.Link(
                    href: .string
                ),
                follows: Common.Link(
                    href: .string
                )
            )
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
