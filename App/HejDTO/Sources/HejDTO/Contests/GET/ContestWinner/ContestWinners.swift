
import Foundation

extension Contests {
    
    ///https://docs.hejto.pl/#tag/Contests/operation/get_contest_winners
    public struct ContestWinners: Codable, Equatable {

        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links

        public struct Embedded: Codable, Equatable {
            public struct Winner: Codable, Equatable {
                public let user: User
                public let place: Int
                public let uuid: String

                public struct User: Codable, Equatable {
                    public let username, sex, description, city: String
                    public let avatar, background: Common.Image
                    public let status: String
                    public let controversial: Bool
                    public let currentRank, currentColor: String
                    public let verified, sponsor: Bool
                    public let createdAt: String

                    public struct Links: Codable, Equatable {
                        public let selfLink: Common.Link
                        public let follows: Common.Link

                        private enum CodingKeys: String, CodingKey {
                            case selfLink = "self", follows
                        }
                    }

                    public let links: Links

                    private enum CodingKeys: String, CodingKey {
                        case username, sex, description, city, avatar, background, status, controversial
                        case currentRank = "current_rank"
                        case currentColor = "current_color"
                        case verified, sponsor
                        case createdAt = "created_at"
                        case links = "_links"
                    }
                }
            }
            public let items: [Winner]
        }
        public let embedded: Embedded
        
        private enum CodingKeys: String, CodingKey {
            case page, limit, pages, total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
}
