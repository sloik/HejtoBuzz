
import Foundation

extension Account {

    /// https://docs.hejto.pl/#tag/Account/operation/get_account_notification
    public struct Notification: Codable, Equatable {

        public struct Sender: Codable, Equatable {

            public struct Links: Codable, Equatable {
                public let selfLink: Link
                public let follows: Link

                private enum CodingKeys: String, CodingKey {
                    case selfLink = "self"
                    case follows
                }
            }

            public let username: String
            public let sex: String
            public let avatar: Image
            public let background: Image
            public let status: String
            public let controversial: Bool
            public let currentRank: String
            public let currentColor: String
            public let verified: Bool
            public let sponsor: Bool
            public let createdAt: String
            public let links: Links

            private enum CodingKeys: String, CodingKey {
                case username
                case sex
                case avatar
                case background
                case status
                case controversial
                case currentRank = "current_rank"
                case currentColor = "current_color"
                case verified
                case sponsor
                case createdAt = "created_at"
                case links = "_links"
            }
        }

        public let sender: Sender
        public let type: String
        public let resourceName: String
        public let resourceAction: String

        private enum CodingKeys: String, CodingKey {
            case sender
            case type
            case resourceName = "resource_name"
            case resourceAction = "resource_action"
        }
    }
}
