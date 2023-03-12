
import Foundation

// https://docs.hejto.pl/#tag/Account/operation/get_account
struct Account: Codable, Equatable {
    let username: String
    let email: String
    let birthday: String
    let sex: String
    let description: String
    let city: String
    let avatar: Avatar
    let background: Background
    let status: String
    let passwordRequestedAt: String
    let passwordChangedAt: String
    let controversial: Bool
    let accountStats: AccountStats
    let lastActivity: String
    let referralCode: String
    let usedReferralCode: String
    let currentRank: String
    let currentColor: String
    let nextRank: String
    let nextColor: String
    let rankProgress: String
    let verified: Bool
    let sponsor: Bool
    let theme: String
    let showNSFW: Bool
    let showControversial: Bool
    let showWarContent: Bool
    let blurNSFW: Bool
    let defaultSort: String
    let defaultPostType: String
    let defaultCommunity: String
    let createdAt: String
    let links: Links

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
