import XCTest
@testable import SwiftyBit

class testUInt64_Extension: XCTestCase {
    
    let expectMinValue: UInt64 = UInt64.min
    
    let expectMaxValue: UInt64 = UInt64.max
    
    
    func testData() {
        
        let data = expectMinValue.data
        
        XCTAssertEqual(data.count, MemoryLayout.size(ofValue: expectMinValue))
        XCTAssertEqual(data.uint64, expectMinValue)
        
        let data2 = expectMaxValue.data
        XCTAssertEqual(data2.uint64, expectMaxValue)
        
    }
}
