
import XCTest
@testable import HejDTO
import CustomDump

final class CommunitiesUpdateCommunityMemberTests: XCTestCase {

    func test_parsingJsonExample() throws {

        let jsonString = """
        {
          "status": "active",
          "role": "administrator"
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Communities.UpdateCommunityMember.self,
                from: jsonString.data(using: .utf8)!
            )

        let expectedResult = Communities.UpdateCommunityMember(
            status: .active,
            role: .administrator
        )

        XCTAssertNoDifference(result, expectedResult)
    }
}
