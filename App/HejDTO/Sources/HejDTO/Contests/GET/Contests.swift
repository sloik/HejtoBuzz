
import Foundation

public struct Contests: Codable, Equatable {
    
    ///https://docs.hejto.pl/#tag/Contests/operation/get_contests
    public let page, limit, pages, total: Int
    public let links: Common.Links
    public let embedded: Embedded

    private enum CodingKeys: String, CodingKey {
        case page, limit, pages, total
        case links = "_links"
        case embedded = "_embedded"
    }
    
    public struct Embedded: Codable, Equatable {
        public let items: [Contest]
        
        public struct Contest: Codable, Equatable {
            public let type: String
            public let title: String
            public let slug: String
            public let content: String
            public let startedAt: String
            public let finishedAt: String
            public let image: Common.Image
            public let awards: [Contests.Detail.Award]
            public let organizedBy: Contests.Organizer
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
    }
}
