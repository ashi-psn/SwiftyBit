import XCTest
@testable import SwiftyBit

class testData_Extension: XCTestCase {
    
    var expectUInt8: UInt8 = 255
    
    var expectUInt16: UInt16 = 65535
    
    var expectUInt32: UInt32 = 4294967295
    
    var expectUInt64: UInt64 = 18446744073709551615
    
    let expectString = "expect string"
    
    let expectBytes: [UInt8] = [
        0x00,
        0x01,
        0x02,
        0x03,
        0x04,
        0x05,
        0x06,
        0x07,
        0x08,
        0x09
    ]
    
    let expectBitArray: [UInt8] = [
        0b01,
        0b01,
        0b01,
        0b01,
        0b01,
        0b01,
        0b01,
        0b01
    ]
    
    override func setUpWithError() throws {}
    
    func testBytes() {
        let data = Data(bytes: expectBytes, count: expectBytes.count)
        let value = data.bytes
        
        XCTAssertEqual(value.count, expectBytes.count)
        XCTAssertEqual(value, expectBytes)
    }
    
    func testUint8() {
        let data = Data(bytes: &expectUInt8, count: MemoryLayout.size(ofValue: expectUInt8))
        let value = data.uint8
        XCTAssertEqual(value, expectUInt8)
    }
    
    func testUint16() {
        let data = Data(bytes: &expectUInt16, count: MemoryLayout.size(ofValue: expectUInt16))
        let value = data.uint16
        XCTAssertEqual(value, expectUInt16)
    }
    
    func testUint32() {
        let data = Data(bytes: &expectUInt32, count: MemoryLayout.size(ofValue: expectUInt32))
        let value = data.uint32
        XCTAssertEqual(value, expectUInt32)
    }
    
    func testUint64() {
        let data = Data(bytes: &expectUInt64, count: MemoryLayout.size(ofValue: expectUInt64))
        let value = data.uint64
        XCTAssertEqual(value, expectUInt64)
    }
    
    func testString() {
        guard
            let data = expectString.data(using: .utf8),
            let value = data.string
            else {
                XCTFail()
                return
            }
        
        XCTAssertEqual(value, expectString)
    }
}
