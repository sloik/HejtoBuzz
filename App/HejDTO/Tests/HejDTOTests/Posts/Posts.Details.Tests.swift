import XCTest
@testable import HejDTO
import CustomDump

final class PostsDetailsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/get_post
        let jsonString =
        """
        {
            "type": "string",
            "title": "string",
            "slug": "string",
            "content": "string",
            "content_plain": "string",
            "excerpt": "string",
            "status": "string",
            "hot": true,
            "images": [
                {
                    "alt": "string",
                    "uuid": "string",
                    "position": 0
                }
            ],
            "tags": [
                {
                    "name": "string",
                    "num_follows": 0,
                    "num_posts": 0,
                    "_links": {
                        "self": {
                            "href": "string"
                        },
                        "follows": {
                            "href": "string"
                        },
                        "blocks": {
                            "href": "string"
                        }
                    }
                }
            ],
            "author": {
                "username": "string",
                "sex": "string",
                "avatar": {
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
            "community": {
                "name": "string",
                "slug": "string",
                "primary_color": "string"
            },
            "nsfw": true,
            "controversial": true,
            "war_content": true,
            "sponsored": 0,
            "poll": {
                "title": "string",
                "options": [
                    {
                        "title": "string",
                        "num": 0,
                        "num_votes": 0
                    }
                ],
                "num_votes": 0,
                "user_vote": 0,
                "uuid": "string"
            },
            "masked": true,
            "num_likes": 0,
            "num_comments": 0,
            "num_favorites": 0,
            "is_liked": true,
            "is_commented": true,
            "is_favorited": true,
            "uuid": "string",
            "comments_enabled": true,
            "favorites_enabled": true,
            "likes_enabled": true,
            "promoted": 0,
            "reports_enabled": true,
            "shares_enabled": true,
            "created_at": "2019-08-24T14:15:22Z",
            "updated_at": "2019-08-24T14:15:22Z"
        }
        """
        // Act
        let result = try JSONDecoder().decode(Posts.Details.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts.Details(
            type: .string,
            title: .string,
            slug: .string,
            content: .string,
            contentPlain: .string,
            excerpt: .string,
            status: .string,
            hot: true,
            images: [Posts.Details.Image(
                alt: .string,
                uuid: .string,
                position: 0
            )],
            tags: [Posts.Details.Tag(
                name: .string,
                numFollows: 0,
                numPosts: 0,
                links: Posts.Details.Tag.Links(
                    selfLink: Common.Link(
                        href: .string
                    ),
                    follows: Common.Link(
                        href: .string
                    ),
                    blocks: Common.Link(
                        href: .string
                    )
                )
            )],
            author: Posts.Details.Author(
                username: .string,
                sex: .string,
                avatar: Common.Image(
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
                links: Posts.Details.Author.Links(
                    selfLink: Common.Link(
                        href: .string
                    ),
                    follows: Common.Link(
                        href: .string
                    )
                )
            ),
            community: Posts.Details.Community(
                name: .string,
                slug: .string,
                primaryColor: .string
            ),
            nsfw: true,
            controversial: true,
            warContent: true,
            sponsored: 0,
            poll: Posts.Details.Poll(
                title: .string,
                options: [Posts.Details.Poll.PollOption(
                    title: .string,
                    num: 0,
                    numVotes: 0
                )
                ],
                numVotes: 0,
                userVote: 0,
                uuid: .string
            ),
            masked: true,
            numLikes: 0,
            numComments: 0,
            numFavorites: 0,
            isLiked: true,
            isCommented: true,
            isFavorited: true,
            uuid: .string,
            commentsEnabled: true,
            favoritesEnabled: true,
            likesEnabled: true,
            promoted: 0,
            reportsEnabled: true,
            sharesEnabled: true,
            createdAt: .date2019_08_24T141522Z,
            updatedAt: .date2019_08_24T141522Z
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
