import XCTest
@testable import SwiftyBit

class testUInt16_Extension: XCTestCase {
    
    let expectMinValue: UInt16 = UInt16.min
    
    let expectMaxValue: UInt16 = UInt16.max
    
    
    func testData() {
        
        let data = expectMinValue.data
        
        XCTAssertEqual(data.count, MemoryLayout.size(ofValue: expectMinValue))
        XCTAssertEqual(data.uint16, expectMinValue)
        
        let data2 = expectMaxValue.data
        XCTAssertEqual(data2.uint16, expectMaxValue)
        
    }
}
