import XCTest
@testable import HejDTO
import CustomDump

final class PostsCommentTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/get_post_comment
        let jsonString =
        """
        {
            "status": "string",
            "post": {
                "type": "string",
                "title": "string",
                "excerpt": "string"
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
        """
        
        // Act
        let result = try JSONDecoder().decode(Posts.Comment.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.Comment(
            status: .string,
            post: Posts.Comment.Post(
                type: .string,
                title: .string,
                excerpt: .string
            ),
            author: Posts.Comment.Author(
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
                createdAt: .date2019_08_24T141522Z
            ),
            numLikes: 0,
            numReports: 0,
            isLiked: true,
            isReported: true,
            replies: Posts.Comment.Replies(),
            likesEnabled: true,
            promoted: 0,
            createdAt: .date2019_08_24T141522Z,
            updatedAt: .date2019_08_24T141522Z,
            uuid: .string,
            links: Posts.Comment.Links(
                selfLink: Common.Link(
                    href: .string
                ),
                likes: Common.Link(
                    href: .string
                )
            )
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
