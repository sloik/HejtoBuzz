
import Foundation

extension Communities {

    /// https://docs.hejto.pl/#tag/Communities/operation/post_community
    public struct Community: Codable, Equatable {

        public let name: String
        public let description: String
        public let rules: String
        public let avatar: String
        public let background: String
        public let category: String

        public struct Topic: Codable, Equatable {
            public let name: String
        }
        public let topics: [Topic]
        public let postTypes: [String]

        private enum CodingKeys: String, CodingKey {
            case name
            case description
            case rules
            case avatar
            case background
            case category
            case topics
            case postTypes = "post_types"
        }
    }
}
