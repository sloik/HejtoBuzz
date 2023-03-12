
import XCTest
@testable import HejDTO
import CustomDump

final class AccountImagesUpdateTests: XCTestCase {

    // https://docs.hejto.pl/#tag/Account/operation/put_account
    func test_parsingJsonExample() throws {

        let jsonString = """
        {
          "avatar": "string",
          "background": "string"
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Account.Images.Update.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Account.Images.Update(
            avatar: .string,
            background: .string
        )

        XCTAssertNoDifference(result, expectedResult)
    }

}

