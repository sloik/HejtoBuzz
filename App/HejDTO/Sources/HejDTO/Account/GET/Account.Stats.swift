
import Foundation

extension Account {

    public struct Stats: Codable, Equatable {
        public let numUnreadNotifications: Int
        public let numUnreadConversations: Int
        public let numPosts: Int
        public let numComments: Int
        public let numFollows: Int
        public let sumScores: Int

        enum CodingKeys: String, CodingKey {
            case numUnreadNotifications = "num_unread_notifications"
            case numUnreadConversations = "num_unread_conversations"
            case numPosts = "num_posts"
            case numComments = "num_comments"
            case numFollows = "num_follows"
            case sumScores = "sum_scores"
        }
    }

}
