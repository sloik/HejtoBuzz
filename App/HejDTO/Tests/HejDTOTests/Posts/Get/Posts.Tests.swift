import XCTest
@testable import HejDTO
import CustomDump

final class PostsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Posts/operation/get_posts
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
                        "updated_at": "2019-08-24T14:15:22Z",
                        "_links": {
                            "self": {
                                "href": "string"
                            },
                            "comments": {
                                "href": "string"
                            },
                            "likes": {
                                "href": "string"
                            },
                            "favorites": {
                                "href": "string"
                            }
                        }
                    }
                ]
            }
        }
        """
        // Act
        let result = try JSONDecoder().decode(Posts.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Posts(
            page: 0,
            limit: 0,
            pages: 0,
            total: 0,
            links: Posts.Links(
                selfLink: .string,
                first: .string,
                last: .string,
                next: .string,
                previous: .string),
            embedded: Posts.Embedded(
                items: [Posts.Embedded.Items(
                    type: .string,
                    title: .string,
                    slug: .string,
                    content: .string,
                    contentPlain: .string,
                    excerpt: .string,
                    status: .string,
                    hot: true,
                    images: [Posts.Embedded.Items.Image(
                        alt: .string,
                        uuid: .string,
                        position: 0
                    )
                    ],
                    tags: [Posts.Embedded.Items.Tags(
                        name: .string,
                        numFollows: 0,
                        numPosts: 0,
                        links: Posts.Embedded.Items.Tags.Links(
                            selfLink: Link(
                                href: .string
                            ),
                            follows: Link(
                                href: .string
                            ),
                            blocks: Link(
                                href: .string
                            )
                        )
                    )
                    ],
                    author: Posts.Embedded.Items.Author(
                        username: .string,
                        sex: .string,
                        avatar: Posts.Embedded.Items.Author.Image(
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
                        links: Posts.Embedded.Items.Author.Links(
                            selfLink: Link(
                                href: .string
                            ),
                            follows: Link(
                                href: .string
                            )
                        )
                    ),
                    community: Posts.Embedded.Items.Community(
                        name: .string,
                        slug: .string,
                        primaryColor: .string
                    ),
                    nsfw: true,
                    controversial: true,
                    warContent: true,
                    sponsored: 0,
                    poll: Posts.Embedded.Items.Poll(
                        title: .string, options: [Posts.Embedded.Items.Poll.Options(
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
                    updatedAt: .date2019_08_24T141522Z,
                    links: Posts.Embedded.Items.Links(
                        selfLink: Link(
                            href: .string
                        ),
                        comments: Link(
                            href: .string
                        ),
                        likes: Link(
                            href: .string
                        ),
                        favorites: Link(
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
