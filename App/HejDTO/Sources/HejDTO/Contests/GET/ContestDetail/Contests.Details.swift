
import Foundation

extension Contests {
    
    ///https://docs.hejto.pl/#tag/Contests/operation/get_contest
    public struct Detail: Codable, Equatable {
        public let type, title, slug, content: String
        public let startedAt, finishedAt: String
        public let image: Common.Image
        public let awards: [Award]
        public let organizedBy: Contests.ContestOrganizer
        public let userScore, userPosition: Int
        public let links: Common.SelfLink
        
        public struct Award: Codable, Equatable {
            public let title, slug, content: String
            public let position: Int
            public let images: [AwardImage]
            
            public struct AwardImage: Codable, Equatable {
                public let alt, uuid: String
                public let position: Int
            }
        }

        private enum CodingKeys: String, CodingKey {
            case type, title, slug, content
            case startedAt = "started_at"
            case finishedAt = "finished_at"
            case image, awards
            case organizedBy = "organized_by"
            case userScore = "user_score"
            case userPosition = "user_position"
            case links = "_links"
        }
    }
    
    public struct ContestOrganizer: Codable, Equatable {
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
