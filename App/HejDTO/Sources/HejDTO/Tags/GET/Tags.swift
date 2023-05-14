
/// https://docs.hejto.pl/#tag/Tags/operation/get_tags
public struct Tags: Codable, Equatable {

    public let page: Int
    public let limit: Int
    public let pages: Int
    public let total: Int

    public let links: Common.Links

    public struct Embedded: Codable, Equatable {
        public struct Item: Codable, Equatable {
            public let name: String
            public let controversial: Bool
            public let warContent: Bool
            public let nsfw: Bool
            public let numFollows: Int
            public let numPosts: Int
            public let isFollowed: Bool
            public let isBlocked: Bool

            public struct Links: Codable, Equatable {
                let selfLink: Common.Link
                let follows: Common.Link
                let blocks: Common.Link

                private enum CodingKeys: String, CodingKey {
                    case selfLink = "self"
                    case follows
                    case blocks
                }
            }
            public let links: Links

            private enum CodingKeys: String, CodingKey {
                case name, controversial, warContent = "war_content", nsfw, numFollows = "num_follows", numPosts = "num_posts", isFollowed = "is_followed", isBlocked = "is_blocked", links = "_links"
            }
        }
        public let items: [Item]
    }
    public let embedded: Embedded

    private enum CodingKeys: String, CodingKey {
        case page, limit, pages, total, links = "_links", embedded = "_embedded"
    }
}
