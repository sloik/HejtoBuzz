import XCTest
@testable import HejDTO
import CustomDump

final class PostsCommentLikesTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/get_post_comment_likes
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
                        "author": {
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
                        },
                        "created_at": "2019-08-24T14:15:22Z"
                    }
                ]
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Posts.CommentLikes.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.CommentLikes(
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
            embedded: Posts.CommentLikes.Embedded(
                items: [Posts.CommentLikes.Embedded.Item(
                    author: Posts.CommentLikes.Embedded.Item.Author(
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
                        links: Posts.CommentLikes.Embedded.Item.Author.Links(
                            selfLink: Common.Link(
                                href: .string
                            ),
                            follows: Common.Link(
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
