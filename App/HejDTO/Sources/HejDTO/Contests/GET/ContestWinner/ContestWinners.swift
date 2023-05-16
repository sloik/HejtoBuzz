
import Foundation

extension Contests {
    
    ///https://docs.hejto.pl/#tag/Contests/operation/get_contest_winners
    public struct ContestWinners: Codable, Equatable {
        
        public struct Embedded: Codable, Equatable {
            public let items: [Winner]
        }
        
        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int
        public let links: Common.Links
        public let embedded: Contests.ContestWinners.Embedded
        
        private enum CodingKeys: String, CodingKey {
            case page, limit, pages, total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
}
