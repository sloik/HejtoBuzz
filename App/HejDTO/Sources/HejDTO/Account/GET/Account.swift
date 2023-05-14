
import Foundation

/// `https://docs.hejto.pl/#tag/Account/operation/get_account`
public struct Account: Codable, Equatable {
    public let username: String
    public let email: String
    public let birthday: String
    public let sex: String
    public let description: String
    public let city: String
    public let avatar: Common.Image
    public let background: Common.Image
    public let status: String
    public let passwordRequestedAt: String
    public let passwordChangedAt: String
    public let controversial: Bool
    public let accountStats: Stats
    public let lastActivity: String
    public let referralCode: String
    public let usedReferralCode: String
    public let currentRank: String
    public let currentColor: String
    public let nextRank: String
    public let nextColor: String
    public let rankProgress: String
    public let verified: Bool
    public let sponsor: Bool
    public let theme: String
    public let showNSFW: Bool
    public let showControversial: Bool
    public let showWarContent: Bool
    public let blurNSFW: Bool
    public let defaultSort: String
    public let defaultPostType: String
    public let defaultCommunity: String
    public let createdAt: String
    public let links: Common.SelfLink

    enum CodingKeys: String, CodingKey {
        case username, email, birthday, sex, description, city, avatar, background, status
        case passwordRequestedAt = "password_requested_at"
        case passwordChangedAt = "password_changed_at"
        case accountStats = "account_stats"
        case usedReferralCode = "used_referral_code"
        case currentRank = "current_rank"
        case currentColor = "current_color"
        case nextRank = "next_rank"
        case nextColor = "next_color"
        case rankProgress = "rank_progress"
        case lastActivity = "last_activity"
        case referralCode = "referral_code"
        case controversial, verified, sponsor, theme
        case showNSFW = "show_nsfw"
        case showControversial = "show_controversial"
        case showWarContent = "show_war_content"
        case blurNSFW = "blur_nsfw"
        case defaultSort = "default_sort"
        case defaultPostType = "default_post_type"
        case defaultCommunity = "default_community"
        case createdAt = "created_at"
        case links = "_links"
    }
}
