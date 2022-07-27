import Foundation

public extension Array where Element == UInt8 {
    var data: Data {
        return Data(self)
    }
}
