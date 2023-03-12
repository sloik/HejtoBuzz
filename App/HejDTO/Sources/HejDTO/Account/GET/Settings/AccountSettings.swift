import Foundation

/// Get account settings documentation:
/// https://docs.hejto.pl/#tag/Account/operation/get_account_settings
public struct AccountSettings: Codable, Equatable {
    
    enum ThemeType: String, Codable {
        case light = "light"
        case dark = "dark"
    }
    
    enum DefaultSort: String, Codable {
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
    
    enum DefaultPostType: String, Codable {
        case all = "all"
        case article = "article"
        case discussion =  "discussion"
    }
    
    let theme: String
    let subscribeNewsletter: Bool
    let subscribeUnreadConversationsEmails: Bool
    let subscribeUnreadNotificationsEmails: Bool
    let subscribeUserMentionNotifications: Bool
    let subscribePostCommentNotifications: Bool
    let subscribePostLikeNotifications: Bool
    let subscribeCommentLikeNotifications: Bool
    let subscribeNewFollowerNotifications: Bool
    let subscribeReflinkUsedNotifications: Bool
    let subscribeFollowedUserPostNotifications: Bool
    let subscribeFollowedTagPostNotifications: Bool
    let subscribeFollowedCommunityPostNotifications: Bool
    let showNsfw: Bool
    let showControversial: Bool
    let showWarContent: Bool
    let blurNsfw: Bool
    let defaultSort: String
    let defaultPostType: String
    let defaultCommunity: String
    
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
