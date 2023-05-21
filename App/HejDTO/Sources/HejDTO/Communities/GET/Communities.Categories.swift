
import Foundation

extension Communities {

    /// https://docs.hejto.pl/#tag/Communities/operation/get_community_categories
    public struct Categories: Codable, Equatable {
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links

        public struct Embedded: Codable, Equatable {
            public struct Item: Codable, Equatable {
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
}
