import Foundation

extension Account {

    /// Get account settings documentation:
    /// https://docs.hejto.pl/#tag/Account/operation/get_account_settings
    public struct Settings: Codable, Equatable {

        public enum Theme: String, Codable {
            case light = "light"
            case dark = "dark"
        }

        public enum Sort: String, Codable {
            case hot3 = "hot-3"
            case hot6 = "hot-6"
            case hot12 = "hot-12"
            case new = "new"
            case topDay = "top-day"
            case topWeek = "top-week"
            case topMonth = "top-month"
            case followed = "followed"
            case rand = "rand"
            case favorited = "favorited"
        }

        public enum PostType: String, Codable {
            case all = "all"
            case article = "article"
            case discussion =  "discussion"
        }

        public let theme: Theme
        public let subscribeNewsletter: Bool
        public let subscribeUnreadConversationsEmails: Bool
        public let subscribeUnreadNotificationsEmails: Bool
        public let subscribeUserMentionNotifications: Bool
        public let subscribePostCommentNotifications: Bool
        public let subscribePostLikeNotifications: Bool
        public let subscribeCommentLikeNotifications: Bool
        public let subscribeNewFollowerNotifications: Bool
        public let subscribeReflinkUsedNotifications: Bool
        public let subscribeFollowedUserPostNotifications: Bool
        public let subscribeFollowedTagPostNotifications: Bool
        public let subscribeFollowedCommunityPostNotifications: Bool
        public let showNsfw: Bool
        public let showControversial: Bool
        public let showWarContent: Bool
        public let blurNsfw: Bool
        public let defaultSort: Sort
        public let defaultPostType: PostType
        public let defaultCommunity: String

        enum CodingKeys: String, CodingKey {
            case theme
            case subscribeNewsletter = "subscribe_newsletter"
            case subscribeUnreadConversationsEmails = "subscribe_unread_conversations_emails"
            case subscribeUnreadNotificationsEmails = "subscribe_unread_notifications_emails"
            case subscribeUserMentionNotifications = "subscribe_user_mention_notifications"
            case subscribePostCommentNotifications = "subscribe_post_comment_notifications"
            case subscribePostLikeNotifications = "subscribe_post_like_notifications"
            case subscribeCommentLikeNotifications = "subscribe_comment_like_notifications"
            case subscribeNewFollowerNotifications = "subscribe_new_follower_notifications"
            case subscribeReflinkUsedNotifications = "subscribe_reflink_used_notifications"
            case subscribeFollowedUserPostNotifications = "subscribe_followed_user_post_notifications"
            case subscribeFollowedTagPostNotifications = "subscribe_followed_tag_post_notifications"
            case subscribeFollowedCommunityPostNotifications = "subscribe_followed_community_post_notifications"
            case showNsfw = "show_nsfw"
            case showControversial = "show_controversial"
            case showWarContent = "show_war_content"
            case blurNsfw = "blur_nsfw"
            case defaultSort = "default_sort"
            case defaultPostType = "default_post_type"
            case defaultCommunity = "default_community"
        }
    }
}
