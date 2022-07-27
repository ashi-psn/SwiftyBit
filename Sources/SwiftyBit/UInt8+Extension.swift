import Foundation

public extension UInt8 {
    
    public var data: Data {
        Data([self])
    }
    
    public var uint: UInt {
        UInt(self)
    }
    
    public func to1bitUInt8(range: ClosedRange<Int>) -> UInt8? {
        guard let binary = Int(String(self, radix: 2)) else {
            return nil
        }
        
        let binaryArray = Array(String(format: "%08d", binary))
        let resultBinary = binaryArray[range]
        
        guard let result = Int(String(resultBinary), radix: 2) else {
            return nil
        }
        
        return UInt8(result)
    }
    
    public func to1bitUInt8(range: Range<Int>) -> UInt8? {
        guard let binary = Int(String(self, radix: 2)) else {
            return nil
        }
        
        let binaryArray = Array(String(format: "%08d", binary))
        let resultBinary = binaryArray[range]
        
        guard let result = Int(String(resultBinary), radix: 2) else {
            return nil
        }
        
        return UInt8(result)
    }
}
