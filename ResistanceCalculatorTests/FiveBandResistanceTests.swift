import XCTest
@testable import Local

class FiveBandResistanceTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // 1つ目のバンドのResistanceColorのnumberはnilではない
    func testFirstBandValueNotNil() throws {
        let fiveBandResistance = FiveBandResistance()
        for resistanceColor in fiveBandResistance.firstBands {
            XCTAssertNotNil(resistanceColor.number)
        }
    }
    
    // 2つ目のバンドのResistanceColorのnumberはnilではない
    func testSecondBandValueNotNil() throws {
        let fiveBandResistance = FiveBandResistance()
        for resistanceColor in fiveBandResistance.secondBands {
            XCTAssertNotNil(resistanceColor.number)
        }
    }
    
    // 3つ目のバンドのResistanceColorのmultiplierはnilではない
    func testThirdBandValueNotNil() throws {
        let fiveBandResistance = FiveBandResistance()
        for resistanceColor in fiveBandResistance.thirdBands {
            XCTAssertNotNil(resistanceColor.number)
        }
    }
    
    // 4つ目のバンドのResistanceColorのerrorはnilではない
    func testFourthBandValueNotNil() throws {
        let fiveBandResistance = FiveBandResistance()
        for resistanceColor in fiveBandResistance.fourthBands {
            XCTAssertNotNil(resistanceColor.multiplier)
        }
    }
    
    // 5つ目のバンドのResistanceColorのerrorはnilではない
    func testFiveBandValueNotNil() throws {
        let fiveBandResistance = FiveBandResistance()
        for resistanceColor in fiveBandResistance.fifthBands {
            XCTAssertNotNil(resistanceColor.error)
        }
    }
    
    // 1本目のバンドのインデックスと色が一致していることを確認
    func testFirstBandIndexAndColorPair() throws {
        let fiveBandResistance = FiveBandResistance()
        fiveBandResistance.firstBandIndex = 0
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.black)
        fiveBandResistance.firstBandIndex = 1
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.brown)
        fiveBandResistance.firstBandIndex = 2
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.red)
        fiveBandResistance.firstBandIndex = 3
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.orange)
        fiveBandResistance.firstBandIndex = 4
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.yellow)
        fiveBandResistance.firstBandIndex = 5
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.green)
        fiveBandResistance.firstBandIndex = 6
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.blue)
        fiveBandResistance.firstBandIndex = 7
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.purple)
        fiveBandResistance.firstBandIndex = 8
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.gray)
        fiveBandResistance.firstBandIndex = 9
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.white)
        
        // 全10色
        XCTAssertEqual(fiveBandResistance.firstBands.count, 10)
    }
    
    // 2本目のバンドのインデックスと色が一致していることを確認
    func testSecondBandIndexAndColorPair() throws {
        let fiveBandResistance = FiveBandResistance()
        fiveBandResistance.firstBandIndex = 0
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.black)
        fiveBandResistance.firstBandIndex = 1
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.brown)
        fiveBandResistance.firstBandIndex = 2
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.red)
        fiveBandResistance.firstBandIndex = 3
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.orange)
        fiveBandResistance.firstBandIndex = 4
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.yellow)
        fiveBandResistance.firstBandIndex = 5
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.green)
        fiveBandResistance.firstBandIndex = 6
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.blue)
        fiveBandResistance.firstBandIndex = 7
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.purple)
        fiveBandResistance.firstBandIndex = 8
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.gray)
        fiveBandResistance.firstBandIndex = 9
        XCTAssertEqual(fiveBandResistance.firstBandColorCode, ResistanceColor.white)
        
        // 全10色
        XCTAssertEqual(fiveBandResistance.secondBands.count, 10)
    }
    
    // 3本目のバンドのインデックスと色が一致していることを確認
    func testThirdBandIndexAndColorPair() throws {
        let fiveBandResistance = FiveBandResistance()
        fiveBandResistance.thirdBandIndex = 0
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.black)
        fiveBandResistance.thirdBandIndex = 1
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.brown)
        fiveBandResistance.thirdBandIndex = 2
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.red)
        fiveBandResistance.thirdBandIndex = 3
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.orange)
        fiveBandResistance.thirdBandIndex = 4
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.yellow)
        fiveBandResistance.thirdBandIndex = 5
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.green)
        fiveBandResistance.thirdBandIndex = 6
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.blue)
        fiveBandResistance.thirdBandIndex = 7
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.purple)
        fiveBandResistance.thirdBandIndex = 8
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.gray)
        fiveBandResistance.thirdBandIndex = 9
        XCTAssertEqual(fiveBandResistance.thirdBandColorCode, ResistanceColor.white)

        // 全10色
        XCTAssertEqual(fiveBandResistance.thirdBands.count, 10)
    }
    
    
    // 4本目のバンドのインデックスと色が一致していることを確認
    func testFourthBandIndexAndColorPair() throws {
        let fiveBandResistance = FiveBandResistance()
        fiveBandResistance.fourthBandIndex = 0
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.black)
        fiveBandResistance.fourthBandIndex = 1
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.brown)
        fiveBandResistance.fourthBandIndex = 2
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.red)
        fiveBandResistance.fourthBandIndex = 3
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.orange)
        fiveBandResistance.fourthBandIndex = 4
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.yellow)
        fiveBandResistance.fourthBandIndex = 5
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.green)
        fiveBandResistance.fourthBandIndex = 6
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.blue)
        fiveBandResistance.fourthBandIndex = 7
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.purple)
        fiveBandResistance.fourthBandIndex = 8
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.white)
        fiveBandResistance.fourthBandIndex = 9
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.gold)
        fiveBandResistance.fourthBandIndex = 10
        XCTAssertEqual(fiveBandResistance.fourBandColorCode, ResistanceColor.silver)
        // 全11色
        XCTAssertEqual(fiveBandResistance.fourthBands.count, 11)
    }
    
    // 4本目のバンドのインデックスと色が一致していることを確認
    func testFifthBandIndexAndColorPair() throws {
        let fiveBandResistance = FiveBandResistance()
        fiveBandResistance.fifthBandIndex = 0
        XCTAssertEqual(fiveBandResistance.fifthBandColorCode, ResistanceColor.brown)
        fiveBandResistance.fifthBandIndex = 1
        XCTAssertEqual(fiveBandResistance.fifthBandColorCode, ResistanceColor.red)
        fiveBandResistance.fifthBandIndex = 2
        XCTAssertEqual(fiveBandResistance.fifthBandColorCode, ResistanceColor.orange)
        fiveBandResistance.fifthBandIndex = 3
        XCTAssertEqual(fiveBandResistance.fifthBandColorCode, ResistanceColor.green)
        fiveBandResistance.fifthBandIndex = 4
        XCTAssertEqual(fiveBandResistance.fifthBandColorCode, ResistanceColor.blue)
        fiveBandResistance.fifthBandIndex = 5
        XCTAssertEqual(fiveBandResistance.fifthBandColorCode, ResistanceColor.purple)
        fiveBandResistance.fifthBandIndex = 6
        XCTAssertEqual(fiveBandResistance.fifthBandColorCode, ResistanceColor.gold)
        fiveBandResistance.fifthBandIndex = 7
        XCTAssertEqual(fiveBandResistance.fifthBandColorCode, ResistanceColor.silver)
        // 全11色
        XCTAssertEqual(fiveBandResistance.fifthBands.count, 8)
    }
    
    // 黒黒黒茶
//    func testBlackBlackBlackBrown() throws {
//        let fourBandResistance = FourBandResistance()
//        fourBandResistance.firstBandIndex = 0
//        fourBandResistance.secondBandIndex = 0
//        fourBandResistance.thirdBandIndex = 0
//        fourBandResistance.fourthBandIndex = 0
//        XCTAssertEqual(fourBandResistance.firstBandColorCode, ResistanceColor.black)
//        XCTAssertEqual(fourBandResistance.secondBandColorCode, ResistanceColor.black)
//        XCTAssertEqual(fourBandResistance.thirdBandColorCode, ResistanceColor.black)
//        XCTAssertEqual(fourBandResistance.fourthBandColorCode, ResistanceColor.brown)
//
//        let resistance = fourBandResistance.resistance!
//        XCTAssertEqual(resistance.resistance, 0)
//        XCTAssertEqual(resistance.resistanceString, "0.0 Ω")
//        XCTAssertEqual(resistance.error, 1)
//        XCTAssertEqual(resistance.errorResistance, 0)
//        XCTAssertEqual(resistance.errorResistanceString, "0.0 Ω")
//    }
}
