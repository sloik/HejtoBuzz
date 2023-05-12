import XCTest
@testable import HejDTO
import CustomDump

final class UsersCommunitiesMembershipsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // json form: https://docs.hejto.pl/#tag/Users/operation/get_user_communities_memberships
        let jsonString =
        """
        {
            "page": 0,
            "limit": 0,
            "pages": 0,
            "total": 0,
            "_links": {
                "self": "string",
                "first": "string",
                "last": "string",
                "next": "string",
                "previous": "string"
            },
            "_embedded": {
                "items": [
                    {}
                ]
            }
        }
        """
        
        // Act
        let result = try JSONDecoder().decode(Users.CommunitiesMemberships.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Users.CommunitiesMemberships(
            page: 0,
            limit: 0,
            pages: 0,
            total: 0,
            links: Common.Links(
                selfLink: .string,
                first: .string,
                last: .string,
                next: .string,
                previous: .string
            ),
            embedded: Users.CommunitiesMemberships.Embedded(
                items: [Users.CommunitiesMemberships.Embedded.Item()
                       ]
            )
        )
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
