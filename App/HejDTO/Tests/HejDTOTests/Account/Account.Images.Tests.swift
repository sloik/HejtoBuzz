
import XCTest
@testable import HejDTO
import CustomDump

final class AccountImagesTests: XCTestCase {

    // https://docs.hejto.pl/#tag/Account/operation/put_account
    func test_parsingJsonExample() throws {

        let jsonString = """
        {
          "avatar": {
            "alt": "string",
            "uuid": "string"
          },
          "background": {
            "alt": "string",
            "uuid": "string"
          }
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Account.Images.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Account.Images(
            avatar: Image(alt: .string, uuid: .string),
            background: Image(alt: .string, uuid: .string)
        )

        XCTAssertNoDifference(result, expectedResult)
    }

}
