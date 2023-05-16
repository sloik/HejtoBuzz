
import Foundation

public struct Contests: Codable, Equatable {
    
    ///https://docs.hejto.pl/#tag/Contests/operation/get_contests
    public let page, limit, pages, total: Int
    public let links: Common.Links

    public struct Embedded: Codable, Equatable {
        public struct Contest: Codable, Equatable {
            public let type: String
            public let title: String
            public let slug: String
            public let content: String
            public let startedAt: String
            public let finishedAt: String
            public let image: Common.Image

            public struct Award: Codable, Equatable {
                public let title, slug, content: String
                public let position: Int

                public struct Image: Codable, Equatable {
                    public let alt, uuid: String
                    public let position: Int
                }
                public let images: [Image]
            }
            public let awards: [Contests.Detail.Award]

            public struct Organizer: Codable, Equatable {
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
            public let organizedBy: Organizer

            public let userScore, userPosition: Int
            public let links: Common.SelfLink

            private enum CodingKeys: String, CodingKey {
                case type, title, slug, content, image, awards
                case startedAt = "started_at"
                case finishedAt = "finished_at"
                case organizedBy = "organized_by"
                case userScore = "user_score"
                case userPosition = "user_position"
                case links = "_links"
            }
        }
        public let items: [Contest]
    }
    public let embedded: Embedded

    private enum CodingKeys: String, CodingKey {
        case page, limit, pages, total
        case links = "_links"
        case embedded = "_embedded"
    }
}
