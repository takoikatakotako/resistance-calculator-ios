import XCTest
@testable import Local

class FourBandResistanceTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // 1つ目のバンドのResistanceColorのnumberはnilではない
    func testFirstBandValueNotNil() throws {
        let fourBandResistance = FourBandResistance()
        for resistanceColor in fourBandResistance.firstBands {
            XCTAssertNotNil(resistanceColor.number)
        }
    }
    
    // 2つ目のバンドのResistanceColorのnumberはnilではない
    func testSecondBandValueNotNil() throws {
        let fourBandResistance = FourBandResistance()
        for resistanceColor in fourBandResistance.secondBands {
            XCTAssertNotNil(resistanceColor.number)
        }
    }
    
    // 3つ目のバンドのResistanceColorのmultiplierはnilではない
    func testThirdBandValueNotNil() throws {
        let fourBandResistance = FourBandResistance()
        for resistanceColor in fourBandResistance.thirdBands {
            XCTAssertNotNil(resistanceColor.multiplier)
        }
    }
    
    // 4つ目のバンドのResistanceColorのerrorはnilではない
    func testFourthBandValueNotNil() throws {
        let fourBandResistance = FourBandResistance()
        for resistanceColor in fourBandResistance.fourthBands {
            XCTAssertNotNil(resistanceColor.error)
        }
    }
    
    // インデックスと色が一致していることを確認
    func testFirstBandIndexAndColorPair() throws {
        let fourBandResistance = FourBandResistance()
        fourBandResistance.firstBandIndex = 0
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.black)
        fourBandResistance.firstBandIndex = 1
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.brown)
        fourBandResistance.firstBandIndex = 2
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.red)
        fourBandResistance.firstBandIndex = 3
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.orange)
        fourBandResistance.firstBandIndex = 4
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.yellow)
        fourBandResistance.firstBandIndex = 5
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.green)
        fourBandResistance.firstBandIndex = 6
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.blue)
        fourBandResistance.firstBandIndex = 7
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.purple)
        fourBandResistance.firstBandIndex = 8
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.gray)
        fourBandResistance.firstBandIndex = 9
        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.white)
        
        // 全10色
        XCTAssertEqual(fourBandResistance.firstBands.count, 10)
    }
    
    // インデックスと色が一致していることを確認
    func testSecondBandIndexAndColorPair() throws {
        let fourBandResistance = FourBandResistance()
        fourBandResistance.secondBandIndex = 0
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.black)
        fourBandResistance.secondBandIndex = 1
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.brown)
        fourBandResistance.secondBandIndex = 2
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.red)
        fourBandResistance.secondBandIndex = 3
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.orange)
        fourBandResistance.secondBandIndex = 4
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.yellow)
        fourBandResistance.secondBandIndex = 5
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.green)
        fourBandResistance.secondBandIndex = 6
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.blue)
        fourBandResistance.secondBandIndex = 7
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.purple)
        fourBandResistance.secondBandIndex = 8
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.gray)
        fourBandResistance.secondBandIndex = 9
        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.white)
        
        // 全10色
        XCTAssertEqual(fourBandResistance.secondBands.count, 10)
    }
    
    // インデックスと色が一致していることを確認
    func testThirdBandIndexAndColorPair() throws {
        let fourBandResistance = FourBandResistance()
        fourBandResistance.thirdBandIndex = 0
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.black)
        fourBandResistance.thirdBandIndex = 1
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.brown)
        fourBandResistance.thirdBandIndex = 2
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.red)
        fourBandResistance.thirdBandIndex = 3
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.orange)
        fourBandResistance.thirdBandIndex = 4
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.yellow)
        fourBandResistance.thirdBandIndex = 5
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.green)
        fourBandResistance.thirdBandIndex = 6
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.blue)
        fourBandResistance.thirdBandIndex = 7
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.purple)
        fourBandResistance.thirdBandIndex = 8
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.white)
        fourBandResistance.thirdBandIndex = 9
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.gold)
        fourBandResistance.thirdBandIndex = 10
        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.silver)
        // 全11色
        XCTAssertEqual(fourBandResistance.thirdBands.count, 11)
    }
    
    // インデックスと色が一致していることを確認
    func testFourthBandIndexAndColorPair() throws {
        let fourBandResistance = FourBandResistance()
        fourBandResistance.fourthBandIndex = 0
        XCTAssertEqual(fourBandResistance.fourthBandColorCode, ResistanceColor.brown)
        fourBandResistance.fourthBandIndex = 1
        XCTAssertEqual(fourBandResistance.fourthBandColorCode, ResistanceColor.red)
        fourBandResistance.fourthBandIndex = 2
        XCTAssertEqual(fourBandResistance.fourthBandColorCode, ResistanceColor.orange)
        fourBandResistance.fourthBandIndex = 3
        XCTAssertEqual(fourBandResistance.fourthBandColorCode, ResistanceColor.green)
        fourBandResistance.fourthBandIndex = 4
        XCTAssertEqual(fourBandResistance.fourthBandColorCode, ResistanceColor.blue)
        fourBandResistance.fourthBandIndex = 5
        XCTAssertEqual(fourBandResistance.fourthBandColorCode, ResistanceColor.purple)
        fourBandResistance.fourthBandIndex = 6
        XCTAssertEqual(fourBandResistance.fourthBandColorCode, ResistanceColor.gold)
        fourBandResistance.fourthBandIndex = 7
        XCTAssertEqual(fourBandResistance.fourthBandColorCode, ResistanceColor.silver)
        // 全11色
        XCTAssertEqual(fourBandResistance.fourthBands.count, 8)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
