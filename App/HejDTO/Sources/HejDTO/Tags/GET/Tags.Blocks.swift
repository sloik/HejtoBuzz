
//{
//  "_embedded": {
//    "items": [
//      {
//        "user": {
//          "username": "string",
//          "sex": "string",
//          "avatar": {
//            "alt": "string",
//            "uuid": "string"
//          },
//          "background": {
//            "alt": "string",
//            "uuid": "string"
//          },
//          "status": "string",
//          "controversial": true,
//          "current_rank": "string",
//          "current_color": "string",
//          "verified": true,
//          "sponsor": true,
//          "created_at": "2019-08-24T14:15:22Z",
//          "_links": {
//            "self": {
//              "href": "string"
//            },
//            "follows": {
//              "href": "string"
//            }
//          }
//        }
//      }
//    ]
//  }
//}

extension Tags {

    /// https://docs.hejto.pl/#tag/Tags/operation/get_tag_blocks
    public struct Blocks: Codable, Equatable {

        public let page: Int
        public let limit: Int
        public let pages: Int
        public let total: Int

        public let links: Common.Links

//        public struct Embedded {
//
//        }
//        public let embedded: Embedded
    }

}
