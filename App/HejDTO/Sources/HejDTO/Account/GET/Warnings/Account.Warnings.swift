

import Foundation

extension Account {

    /// https://docs.hejto.pl/#tag/Account/operation/get_account_warnings
    public struct Warnings: Codable, Equatable {

        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links

        public struct Embedded: Codable, Equatable {

            public struct Item: Codable, Equatable {
                public let reason: String

                public struct Author: Codable, Equatable {
                    public let username: String
                    public let sex: String
                    public let avatar: Common.Image
                    public let background: Common.Image
                    public let status: String
                    public let controversial: Bool
                    public let currentRank: String
                    public let currentColor: String
                    public let verified: Bool
                    public let sponsor: Bool
                    public let createdAt: String

                    public struct Links: Codable, Equatable {
                        public let selfLink, follows: Common.Link

                        private enum CodingKeys: String, CodingKey {
                            case selfLink = "self"
                            case follows
                        }
                    }
                    public let links: Links

                    private enum CodingKeys: String, CodingKey {
                        case username, sex, avatar, background, status, controversial
                        case currentRank = "current_rank"
                        case currentColor = "current_color"
                        case verified, sponsor
                        case createdAt = "created_at"
                        case links = "_links"
                    }
                }
                public let author: Author

                public let uuid: String
                public let createdAt: String

                private enum CodingKeys: String, CodingKey {
                    case reason, author, uuid
                    case createdAt = "created_at"
                    case links = "_links"
                }

                public struct Links: Codable, Equatable {
                    public let selfLink: Common.Link

                    private enum CodingKeys: String, CodingKey {
                        case selfLink = "self"
                    }
                }

                public let links: Links
            }

            let items: [Item]
        }
        public let embedded: Embedded

        private enum CodingKeys: String, CodingKey {
            case page, limit, pages, total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
}
