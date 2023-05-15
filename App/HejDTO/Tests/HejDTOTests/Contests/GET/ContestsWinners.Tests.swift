import XCTest
@testable import HejDTO
import CustomDump

final class ContestsWinnersTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // Arrange
        
        // json form: https://docs.hejto.pl/#tag/Contests/operation/get_contest_winners
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
              {
                "user": {
                  "username": "string",
                  "sex": "string",
                  "description": "string",
                  "city": "string",
                  "avatar": {
                    "alt": "string",
                    "uuid": "string"
                  },
                  "background": {
                    "alt": "string",
                    "uuid": "string"
                  },
                  "status": "string",
                  "controversial": true,
                  "current_rank": "string",
                  "current_color": "string",
                  "verified": true,
                  "sponsor": true,
                  "created_at": "2019-08-24T14:15:22Z",
                  "_links": {
                    "self": {
                      "href": "string"
                    },
                    "follows": {
                      "href": "string"
                    }
                  }
                },
                "place": 0,
                "uuid": "string"
              }
            ]
          }
        }
        """
        // Act
        let result = try JSONDecoder().decode(Contests.ContestWinners.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Contests.ContestWinners(
            page: 0,
            limit: 0,
            pages: 0,
            total: 0,
            links: Common.Links(
                selfLink: .string,
                first: .string,
                last: .string,
                next: .string,
                previous: .string),
            embedded: Contests.ContestWinners.Embedded(
                items: [Contests.ContestWinner(
                    user: Contests.ContestWinner.ContestUserWinner(
                        username: .string,
                        sex: .string,
                        description: .string,
                        city: .string,
                        avatar: Common.Image(
                            alt: .string,
                            uuid: .string),
                        background: Common.Image(
                            alt: .string,
                            uuid: .string),
                        status: .string,
                        controversial: true,
                        currentRank: .string,
                        currentColor: .string,
                        verified: true,
                        sponsor: true,
                        createdAt: .date2019_08_24T141522Z,
                        links: Contests.ContestWinner.ContestUserWinner.Links(
                            selfLink: Common.Link(href: .string),
                            follows: Common.Link(href: .string))),
                    place: 0,
                    uuid: .string)]))
        
        XCTAssertNoDifference(result, expectedResult)
    }
}
