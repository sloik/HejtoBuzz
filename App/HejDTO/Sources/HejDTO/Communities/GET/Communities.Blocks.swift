
extension Communities {

    // https://docs.hejto.pl/#tag/Communities/operation/get_community_blocks
    public struct Blocks: Codable, Equatable {
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links

        public struct Embedded: Codable, Equatable {
            public let items: [Item]

            public struct Item: Codable, Equatable {

                // Example JSON was empty XD
                public struct User: Codable, Equatable {

                }
                public let user: User

                // Example JSON was empty XD
                public struct Community: Codable, Equatable {

                }
                public let community: Community
                public let id: Int
                public let createdAt: String

                enum CodingKeys: String, CodingKey {
                    case user
                    case community
                    case id
                    case createdAt = "created_at"
                }
            }
        }
        public let embedded: Embedded

        enum CodingKeys: String, CodingKey {
            case page
            case limit
            case pages
            case total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
}
