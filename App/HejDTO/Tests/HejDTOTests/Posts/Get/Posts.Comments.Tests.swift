import XCTest
@testable import HejDTO
import CustomDump

final class PostsCommentsPathTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/get_post_comments
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
                        "status": "string",
                        "post": {
                            "type": "string",
                            "title": "string",
                            "slug": "string",
                            "excerpt": "string",
                            "uuid": "string"
                        },
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
                        "num_likes": 0,
                        "num_reports": 0,
                        "is_liked": true,
                        "is_reported": true,
                        "replies": {},
                        "likes_enabled": true,
                        "promoted": 0,
                        "created_at": "2019-08-24T14:15:22Z",
                        "updated_at": "2019-08-24T14:15:22Z",
                        "uuid": "string",
                        "_links": {
                            "self": {
                                "href": "string"
                            },
                            "likes": {
                                "href": "string"
                            }
                        }
                    }
                ]
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Posts.Comments.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.Comments(
            page: 0,
            limit: 0,
            pages: 0,
            total: 0,
            links: Posts.Comments.Links(
                selfLink: .string,
                first: .string,
                last: .string,
                next: .string,
                previous: .string
            ),
            embedded: Posts.Comments.Embedded(
                items: [Posts.Comments.Embedded.Item(
                    status: .string,
                    post: Posts.Comments.Embedded.Item.Post(
                        type: .string,
                        title: .string,
                        slug: .string,
                        excerpt: .string,
                        uuid: .string
                    ),
                    author: Posts.Comments.Embedded.Item.Author(
                        username: .string,
                        sex: .string,
                        avatar: Image(
                            alt: .string,
                            uuid: .string
                        ),
                        background: Image(
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
                        links: Posts.Comments.Embedded.Item.Author.Links(
                            selfLink: Link(
                                href: .string
                            ),
                            follows: Link(
                                href: .string
                            )
                        )
                    ),
                    numLikes: 0,
                    numReports: 0,
                    isLiked: true,
                    isReported: true,
                    replies: Posts.Comments.Embedded.Item.Replies(),
                    likesEnabled: true,
                    promoted: 0,
                    createdAt: .date2019_08_24T141522Z,
                    updatedAt: .date2019_08_24T141522Z,
                    uuid: .string,
                    links: Posts.Comments.Embedded.Item.Links(
                        selfLink: Link(
                            href: .string
                        ),
                        likes: Link(
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
