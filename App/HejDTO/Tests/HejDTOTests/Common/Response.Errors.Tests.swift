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
        let expectedResult = errors

        XCTAssertNoDifference(result, expectedResult)

        XCTAssertEqual(
            result.field_name,
            ["This field cannot be empty"],
            "Dynamic member lookup should return correct value!"
        )
    }

    func test_hasErrors() {
        XCTAssertTrue(
            errors.hasErrors,
            "Should be true for errors containing error information!"
        )

        XCTAssertFalse(
            emptyErrors.hasErrors,
            "Should return false when errors object is empty!"
        )
        XCTAssertFalse(
            zeroErrors.hasErrors,
            "Should return false when errors key is missing!"
        )
    }
}

/// Contains errors.
private let errors = Response.Errors(
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

/// Empty dictionary under "errors" key.
private let emptyErrors = Response.Errors(
    errors: ["errors" : [:]]
)

/// Does not contain "errors" key but has another key.
private let notErrors = Response.Errors(
    errors: ["not_errors_key" : [:]]
)

/// Just empty/zero errors dictionary. No keys and no values.
private let zeroErrors = Response.Errors(
    errors: [ : ]
)
