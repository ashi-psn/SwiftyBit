import XCTest
@testable import SwiftyBit

class testUInt8_Extension: XCTestCase {
    
    let expectIntValue: UInt8 = 0x03
    
    let expectValue: UInt8 = 0b11
    
    let expectUInfaaValue: UInt8 = 0b1011
    
    func testData() {
        
        let data = expectValue.data
        
        XCTAssertEqual(data.count, 1)
        XCTAssertEqual(data.uint8, expectValue)
        
    }
    
    func testUInt() {
        let value = expectUInfaaValue.uint
        XCTAssertEqual(value, 11)
    }
    
    func testTo1bitUInt8ClosedRange() {
        guard let value = expectIntValue.to1bitUInt8(range: 0...7) else {
            XCTFail()
            return
        }
        XCTAssertEqual(value, expectIntValue)
    }
    
    func testTo1bitUInt8Range() {
        guard let value = expectIntValue.to1bitUInt8(range: 0..<8) else {
            XCTFail()
            return
        }
        XCTAssertEqual(value, expectIntValue)
    }
}
