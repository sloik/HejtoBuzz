
import Foundation

/// https://docs.hejto.pl/#tag/Communities/operation/get_communities
public struct Communities: Equatable, Codable {
    public let page: Int
    public let limit: Int
    public let pages: Int
    public let total: Int
    public let links: Common.Links

    public struct Embedded: Codable, Equatable {
        public struct Item: Codable, Equatable {
            public let name: String
            public let slug: String
            public let status: String
            public let description: String
            public let avatar: Common.Image
            public let background: Common.Image
            public let primitive: Bool
            public let controversial: Bool
            public let nsfw: Bool
            public let warContent: Bool

            public struct Category: Codable, Equatable {
                public let name: String
                public let slug: String
                public let numPosts: Int
                public let primaryColor: String

                private enum CodingKeys: String, CodingKey {
                    case name
                    case slug
                    case numPosts = "num_posts"
                    case primaryColor = "primary_color"
                }
            }
            public let category: Category

            public let numMembers: Int
            public let numPosts: Int
            public let isMember: Bool
            public let isBlocked: Bool
            public let memberRole: String
            public let lastVisit: String
            public let newPosts: Int
            public let primaryColor: String
            public let updatedAt: String
            public let links: Common.SelfLink

        }
        public let items: [Item]
    }
    public let embedded: Embedded

    private enum CodingKeys: String, CodingKey {
        case page
        case limit
        case pages
        case total
        case links = "_links"
        case embedded = "_embedded"
    }
}
