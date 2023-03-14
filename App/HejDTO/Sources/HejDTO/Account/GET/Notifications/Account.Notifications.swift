
import Foundation

extension Account {

    /// https://docs.hejto.pl/#tag/Account/operation/get_account_notifications
    public struct Notifications: Codable, Equatable {

        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int


        public struct Links: Codable, Equatable {
            public let selfLink: String
            public let first: String
            public let last: String
            public let next: String
            public let previous: String?

            enum CodingKeys: String, CodingKey {
                case selfLink = "self"
                case first, last, next, previous
            }
        }
        let links: Notifications.Links

        public struct Embedded: Codable, Equatable {

            public struct Item: Codable, Equatable {
                public let status: String
                public let sender: Account.Notification.Sender
                public let type: String
                public let resourceName: String
                public let resourceAction: String
                public let content: String
                public let uuid: String
                public let createdAt: String
                public let readAt: String?

                public struct Links: Codable, Equatable {
                    public let selfLink: Link

                    enum CodingKeys: String, CodingKey {
                        case selfLink = "self"
                    }
                }
                public let links: Item.Links

                enum CodingKeys: String, CodingKey {
                    case status, sender, type
                    case resourceName = "resource_name"
                    case resourceAction = "resource_action"
                    case content, uuid
                    case createdAt = "created_at"
                    case readAt = "read_at"
                    case links = "_links"
                }
            }

            public let items: [Item]
        }

        public let embedded: Embedded

        enum CodingKeys: String, CodingKey {
            case page, limit, pages, total
            case links = "_links"
            case embedded = "_embedded"
        }
    }
}
