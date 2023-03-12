
import XCTest
@testable import HejDTO
import CustomDump

final class AccountDeleteConfirmationTests: XCTestCase {

    // https://docs.hejto.pl/#tag/Account/operation/put_account
    func test_parsingJsonExample() throws {

        let jsonString = """
        {
          "token": "string"
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Account.DeleteConfirmation.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Account.DeleteConfirmation(
            token: .string
        )

        XCTAssertNoDifference(result, expectedResult)
    }

}
