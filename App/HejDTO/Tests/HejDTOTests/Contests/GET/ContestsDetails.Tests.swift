import XCTest
@testable import HejDTO
import CustomDump

final class ContestsDetailsTests: XCTestCase {
    
    func test_parsingJsonExample() throws {
        
        // Arrange
        
        // json form: https://docs.hejto.pl/#tag/Contests/operation/get_contest
        let jsonString =
        """
        {
          "type": "string",
          "title": "string",
          "slug": "string",
          "content": "string",
          "started_at": "2019-08-24T14:15:22Z",
          "finished_at": "2019-08-24T14:15:22Z",
          "image": {
            "alt": "string",
            "uuid": "string"
          },
          "awards": [
            {
              "title": "string",
              "slug": "string",
              "content": "string",
              "position": 0,
              "images": [
                {
                  "alt": "string",
                  "uuid": "string",
                  "position": 0
                }
              ]
            }
          ],
          "organized_by": {
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
          "user_score": 0,
          "user_position": 0,
          "_links": {
            "self": {
              "href": "string"
            }
          }
        }
        """
        // Act
        let result = try JSONDecoder().decode(Contests.Detail.self, from: jsonString.data(using: .utf8)!)
        
        // Assert
        let expectedResult = Contests.Detail(
            type: .string,
            title: .string,
            slug: .string,
            content: .string,
            startedAt: .date2019_08_24T141522Z,
            finishedAt: .date2019_08_24T141522Z,
            image: Common.Image(
                alt: .string,
                uuid: .string),
            awards: [Contests.Detail.Award(
                title: .string,
                slug: .string,
                content: .string,
                position: 0,
                images: [Contests.Detail.Award.Image(
                    alt: .string,
                    uuid: .string,
                    position: 0)])],
            organizedBy: Contests.Detail.Organizer(
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
                links: Contests.Detail.Organizer.Links(selfLink: Common.Link(href: .string),
                                      follows: Common.Link(href: .string))),
            userScore: 0,
            userPosition: 0,
            links: Common.SelfLink(selfLink: Common.Link(href: .string)))
    
        XCTAssertNoDifference(result, expectedResult)
    }
}
