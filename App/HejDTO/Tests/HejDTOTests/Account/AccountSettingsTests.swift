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
        "theme": "string",
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
        "default_sort": "string",
        "default_post_type": "string",
        "default_community": "string"
        }
        """

        // Act
        let result = try JSONDecoder().decode(AccountSettings.self, from: jsonString.data(using: .utf8)!)

        // Assert
        let expectedResult = AccountSettings(
            theme: "string",
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
            defaultSort: "string",
            defaultPostType: "string",
            defaultCommunity: "string"
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}
