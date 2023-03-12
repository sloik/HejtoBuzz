import XCTest
@testable import HejDTO
import CustomDump

final class AccountSettingsTests: XCTestCase {

    func test_parsingJsonExample() throws {

        // Arrange

        // json form: https://docs.hejto.pl/#tag/Account/operation/get_account_settings
        let jsonString =
        """
        {
        "theme": "dark",
        "subscribe_newsletter": true,
        "subscribe_unread_conversations_emails": true,
        "subscribe_unread_notifications_emails": true,
        "subscribe_user_mention_notifications": true,
        "subscribe_post_comment_notifications": true,
        "subscribe_post_like_notifications": true,
        "subscribe_comment_like_notifications": true,
        "subscribe_new_follower_notifications": true,
        "subscribe_reflink_used_notifications": true,
        "subscribe_followed_user_post_notifications": true,
        "subscribe_followed_tag_post_notifications": true,
        "subscribe_followed_community_post_notifications": true,
        "show_nsfw": true,
        "show_controversial": true,
        "show_war_content": true,
        "blur_nsfw": true,
        "default_sort": "hot-3",
        "default_post_type": "all",
        "default_community": "string"
        }
        """

        // Act
        let result = try JSONDecoder().decode(Account.Settings.self, from: jsonString.data(using: .utf8)!)

        // Assert
        let expectedResult = Account.Settings(
            theme: .dark,
            subscribeNewsletter: true,
            subscribeUnreadConversationsEmails: true,
            subscribeUnreadNotificationsEmails: true,
            subscribeUserMentionNotifications: true,
            subscribePostCommentNotifications: true,
            subscribePostLikeNotifications: true,
            subscribeCommentLikeNotifications: true,
            subscribeNewFollowerNotifications: true,
            subscribeReflinkUsedNotifications: true,
            subscribeFollowedUserPostNotifications: true,
            subscribeFollowedTagPostNotifications: true,
            subscribeFollowedCommunityPostNotifications: true,
            showNsfw: true,
            showControversial: true,
            showWarContent: true,
            blurNsfw: true,
            defaultSort: .hot3,
            defaultPostType: .all,
            defaultCommunity: "string"
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}
