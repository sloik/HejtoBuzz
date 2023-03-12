import XCTest
@testable import HejDTO
import CustomDump

final class AccountTests: XCTestCase {

    func test_parsingJsonExample() throws {

        // Arrange

        // json form: https://docs.hejto.pl/#tag/Account/operation/get_account_settings
        let jsonString =
        """
        {
          "username": "string",
          "email": "string",
          "birthday": "2019-08-24T14:15:22Z",
          "sex": "string",
          "description": "string",
          "city": "string",
          "avatar": {
            "alt": "string",
            "uuid": "string"
          },
          "background": {
            "alt": "string",
            "uuid": "string"
          },
          "status": "string",
          "password_requested_at": "2019-08-24T14:15:22Z",
          "password_changed_at": "2019-08-24T14:15:22Z",
          "controversial": true,
          "account_stats": {
            "num_unread_notifications": 0,
            "num_unread_conversations": 0,
            "num_posts": 0,
            "num_comments": 0,
            "num_follows": 0,
            "sum_scores": 0
          },
          "last_activity": "2019-08-24T14:15:22Z",
          "referral_code": "string",
          "used_referral_code": "string",
          "current_rank": "string",
          "current_color": "string",
          "next_rank": "string",
          "next_color": "string",
          "rank_progress": "string",
          "verified": true,
          "sponsor": true,
          "theme": "string",
          "show_nsfw": true,
          "show_controversial": true,
          "show_war_content": true,
          "blur_nsfw": true,
          "default_sort": "string",
          "default_post_type": "string",
          "default_community": "string",
          "created_at": "2019-08-24T14:15:22Z",
          "_links": {
            "self": {
              "href": "string"
            }
          }
        }
        """

        // Act
        let result = try JSONDecoder().decode(Account.self, from: jsonString.data(using: .utf8)!)

        // Assert
        let expectedResult = Account(
            username: .string,
            email: .string,
            birthday: .date2019_08_24T141522Z,
            sex: .string,
            description: .string,
            city: .string,
            avatar: Image(
                alt: .string,
                uuid: .string
            ),
            background: Image(
                alt: .string,
                uuid: .string
            ),
            status: .string,
            passwordRequestedAt: .date2019_08_24T141522Z,
            passwordChangedAt: .date2019_08_24T141522Z,
            controversial: true,
            accountStats: Account.Stats(
                numUnreadNotifications: 0,
                numUnreadConversations: 0,
                numPosts: 0,
                numComments: 0,
                numFollows: 0,
                sumScores: 0
            ),
            lastActivity: .date2019_08_24T141522Z,
            referralCode: .string,
            usedReferralCode: .string,
            currentRank: .string,
            currentColor: .string,
            nextRank: .string,
            nextColor: .string,
            rankProgress: .string,
            verified: true,
            sponsor: true,
            theme: .string,
            showNSFW: true,
            showControversial: true,
            showWarContent: true,
            blurNSFW: true,
            defaultSort: .string,
            defaultPostType: .string,
            defaultCommunity: .string,
            createdAt: .date2019_08_24T141522Z,
            links: Account.Links(
                selfLink: Link(href: .string)
            )
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}

