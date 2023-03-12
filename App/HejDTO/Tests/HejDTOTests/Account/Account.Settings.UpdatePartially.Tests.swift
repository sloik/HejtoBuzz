
import XCTest
@testable import HejDTO
import CustomDump

final class AccountSettingsUpdateTests: XCTestCase {

    func test_parsingJsonExample() throws {

        // Arrange

        // json form: https://docs.hejto.pl/#tag/Account/operation/put_account_settings
        let jsonString =
        """
        {
          "theme": "light",
          "subscribe_newsletter": false,
          "subscribe_unread_notifications_emails": false,
          "subscribe_unread_conversations_emails": false,
          "subscribe_user_mention_notifications": false,
          "subscribe_post_comment_notifications": false,
          "subscribe_post_like_notifications": false,
          "subscribe_comment_like_notifications": false,
          "subscribe_new_follower_notifications": false,
          "subscribe_reflink_used_notifications": false,
          "subscribe_followed_user_post_notifications": false,
          "subscribe_followed_tag_post_notifications": false,
          "subscribe_followed_community_post_notifications": false,
          "show_nsfw": false,
          "blur_nsfw": false,
          "show_controversial": false,
          "show_war_content": false,
          "default_sort": "hot-3",
          "default_post_type": "all",
          "default_community": "string"
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Account.Settings.UpdatePartially.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Account.Settings.UpdatePartially(
            theme: .light,
            subscribeNewsletter: false,
            subscribeUnreadConversationsEmails: false,
            subscribeUnreadNotificationsEmails: false,
            subscribeUserMentionNotifications: false,
            subscribePostCommentNotifications: false,
            subscribePostLikeNotifications: false,
            subscribeCommentLikeNotifications: false,
            subscribeNewFollowerNotifications: false,
            subscribeReflinkUsedNotifications: false,
            subscribeFollowedUserPostNotifications: false,
            subscribeFollowedTagPostNotifications: false,
            subscribeFollowedCommunityPostNotifications: false,
            showNsfw: false,
            showControversial: false,
            showWarContent: false,
            blurNsfw: false,
            defaultSort: .hot3,
            defaultPostType: .all,
            defaultCommunity: "string"
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}
