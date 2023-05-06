import XCTest
@testable import HejDTO
import CustomDump

final class ResponseErrorsTests: XCTestCase {

    func test_parsingJsonExample() throws {

        let jsonString = """
        {
          "errors": {
            "field_name": [
              "This field cannot be empty"
            ],
            "another_field_name": [
              "This field should be a number"
            ]
          }
        }
        """

        // Act
        let result = try JSONDecoder()
            .decode(
                Response.Errors.self,
                from: jsonString.data(using: .utf8)!
            )

        // Assert
        let expectedResult = Response.Errors(
            errors: ["errors" :
                        [
                            "field_name" : [
                                "This field cannot be empty"
                            ],
                            "another_field_name" : [
                                "This field should be a number"
                            ]
                        ]
                    ]
        )

        XCTAssertNoDifference(result, expectedResult)

        XCTAssertEqual(
            result.field_name,
            ["This field cannot be empty"],
            "Dynamic member lookup should return correct value!"
        )
    }

}

