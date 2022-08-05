import Foundation

public extension Data {
    
    var reversedBytes: [UInt8] {
        var values = [UInt8](repeating: 0, count: count)
        copyBytes(to: &values, count: count)
        return values.reversed()
    }

    var reversedData: Data {
        return Data(bytes: reversedBytes, count: count)
    }
    
    var bytes: [UInt8] {
        [UInt8](self)
    }
    
    var uint8: UInt8 {
        UInt8(bigEndian: withUnsafeBytes { $0.load(as: UInt8.self) })
    }
    
    var uint16: UInt16 {
        UInt16(bigEndian: withUnsafeBytes { $0.load(as: UInt16.self) })
    }
    
    var uint32: UInt32 {
        UInt32(bigEndian: withUnsafeBytes { $0.load(as: UInt32.self) })
    }
    
    var uint64: UInt64 {
        UInt64(bigEndian: withUnsafeBytes { $0.load(as: UInt64.self) })
    }
    
    
    var string: String? {
        return String(bytes: self, encoding: .utf8)
    }
    
    /// 8進数変換
    var encodedHexadecimals: [UInt8]? {
        let responseValues = self.withUnsafeBytes({ (pointer: UnsafeRawBufferPointer) -> [UInt8] in
            let unsafeBufferPointer = pointer.bindMemory(to: UInt8.self)
            let unsafePointer = unsafeBufferPointer.baseAddress!
            return [UInt8](UnsafeBufferPointer(start: unsafePointer, count: self.count))
        })
        return responseValues
    }
    
    func outputHex() {
        let hex = self.map{
            String(format: "%02x", $0)
        }
        
        for i in 1...hex.count {
            
            let value = hex[i-1]
            
            if i % 16 == 0 {
                print("\(value) ", terminator: "")
                print()
            } else if i % 8 == 0 {
                print("\(value)   ", terminator: "")
            } else {
                print("\(value) ", terminator: "")
            }
        }
        
        print()
    }
    
    @discardableResult
    mutating func removeByteFromFirst(to endIndex: Int) -> Data {
        
        var removedByte: [UInt8] = []
        
        if self.count == 0 {
            print()
        }
        
        for _ in 0..<endIndex {
            removedByte.append(self.removeFirst())
        }
        
        let removedData: Data = Data(
            bytes: removedByte,
            count: removedByte.count)
        
        return removedData
    }
}
