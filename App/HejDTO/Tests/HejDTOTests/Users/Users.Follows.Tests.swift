import XCTest
@testable import HejDTO
import CustomDump

final class UsersFollowsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Users/operation/get_user_follows
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
                        "follower": {
                            "username": "string",
                            "sex": "string",
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
                    }
                ]
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Users.Follows.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Users.Follows(
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
            embedded: Users.Follows.Embedded(
                items: [Users.Follows.Embedded.Item(
                    follower: Users.Follows.Embedded.Item.Follower(
                        username: .string,
                        sex: .string,
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
                        createdAt: .date2019_08_24T141522Z,
                        links: Users.Follows.Embedded.Item.Follower.Links(
                            selfLink: Common.Link(
                                href: .string
                            ),
                            follows: Common.Link(
                                href: .string
                            )
                        )
                    )
                )
                ]
            )
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
