
import XCTest
@testable import HejDTO
import CustomDump

final class DeleteAccountConfirmationTests: XCTestCase {

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
                DeleteAccountConfirmation.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = DeleteAccountConfirmation(
            token: .string
        )

        XCTAssertNoDifference(result, expectedResult)
    }

}

