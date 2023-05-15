
import Foundation

extension Contests {
    
    ///https://docs.hejto.pl/#tag/Contests/operation/get_contests
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
            public let awards: [Award]
            public let organizedBy: Contests.ContestOrganizer
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
