
import Foundation

extension Account {

    struct AccountStats: Codable, Equatable {
        let numUnreadNotifications: Int
        let numUnreadConversations: Int
        let numPosts: Int
        let numComments: Int
        let numFollows: Int
        let sumScores: Int

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
