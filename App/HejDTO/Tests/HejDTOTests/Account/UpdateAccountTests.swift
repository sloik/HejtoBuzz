
import XCTest
@testable import HejDTO
import CustomDump

final class UpdateAccountTests: XCTestCase {

    // https://docs.hejto.pl/#tag/Account/operation/put_account
    func test_parsingJsonExample() throws {

        let jsonString = """
        {
          "email": "string",
          "sex": "male",
          "birthday": "2019-08-24",
          "city": "string",
          "description": "string",
          "username": "string"
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Account.Update.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Account.Update(
            email: .string,
            sex: "male",
            birthday: .date2019_08_24,
            city: .string,
            description: .string,
            username: .string
        )

        XCTAssertNoDifference(result, expectedResult)
    }

}
