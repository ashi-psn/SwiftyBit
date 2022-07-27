import XCTest
@testable import SwiftyBit

class testArray_Extension: XCTestCase {
    
    let expectBytes: [UInt8] = [
        0b00,
        0b01,
        0b10,
        0b11,
    ]
    
    
    
    func testData() {
        let expectData = Data(expectBytes)
        
        let data = expectBytes.data
        
        XCTAssertEqual(data, expectData)
        XCTAssertEqual(data.count, expectBytes.count)
    }
}
