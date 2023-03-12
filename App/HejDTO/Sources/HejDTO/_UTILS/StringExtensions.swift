
import Foundation

// TODO: - Move to it's own package later
public extension String {

    var dateFromISO8601: Date? {

        // 2019-05-01T16:00:00.000Z
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        return formatter.date(from: self)
    }

}
