import XCTest
@testable import SwiftyBit

class testUInt32_Extension: XCTestCase {
    
    let expectMinValue: UInt32 = UInt32.min
    
    let expectMaxValue: UInt32 = UInt32.max
    
    
    func testData() {
        
        let data = expectMinValue.data
        
        XCTAssertEqual(data.count, MemoryLayout.size(ofValue: expectMinValue))
        XCTAssertEqual(data.uint32, expectMinValue)
        
        let data2 = expectMaxValue.data
        XCTAssertEqual(data2.uint32, expectMaxValue)
        
    }
}

