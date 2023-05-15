
import Foundation

extension Contests {
    
    ///https://docs.hejto.pl/#tag/Contests/operation/get_contest
    public struct ContestDetail: Codable, Equatable {
        public let type, title, slug, content: String
        public let startedAt, finishedAt: String
        public let image: Common.Image
        public let awards: [Contests.Award]
        public let organizedBy: Contests.ContestOrganizer
        public let userScore, userPosition: Int
        public let links: Common.SelfLink

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
}
