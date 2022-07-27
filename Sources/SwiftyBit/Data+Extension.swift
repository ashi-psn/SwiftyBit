import Foundation

public extension Data {
    
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
}
