
import Foundation

extension String {
    static var string: String { "string" }

    static var date2019_08_24T141522Z: String { "2019-08-24T14:15:22Z" }

    static var date2019_08_24: String { "2019-08-24" }
}

extension Date {
    static var date2019_08_24: Date { "2019-08-24T14:15:22Z".dateFromISO8601! }
}
