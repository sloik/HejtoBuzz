
import Foundation

extension ContestWinners {
    
    public struct Embedded: Codable, Equatable {
        public let items: [ContestWinner]
    }
    
    public struct ContestWinner: Codable, Equatable {
        public let user: ContestUserWinner
        public let place: Int
        public let uuid: String
    }
    
    public struct ContestUserWinner: Codable, Equatable {
        public let username, sex, description, city: String
        public let avatar, background: Common.Image
        public let status: String
        public let controversial: Bool
        public let currentRank, currentColor: String
        public let verified, sponsor: Bool
        public let createdAt: String
        public let links: Contests.Links
        
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
