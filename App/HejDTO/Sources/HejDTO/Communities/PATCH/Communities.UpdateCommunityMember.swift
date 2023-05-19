
import Foundation

extension Communities {

    /// https://docs.hejto.pl/#tag/Communities/operation/patch_community_member
    struct UpdateCommunityMember: Codable, Equatable {
        public let status: String
        public let role: String
    }

}
