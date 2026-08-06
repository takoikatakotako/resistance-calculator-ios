import XCTest

// Picker を実際に操作して、抵抗値の表示が追従することを検証する。
// ユニットテストでは Picker の selection と tag の対応までは検証できないため、
// ここは UI テストでしか担保できない。
class ResistanceCalculatorUITests: XCTestCase {

    private var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        app = nil
    }

    private var resistanceValue: String {
        app.staticTexts["resistanceValueText"].label
    }

    // 起動直後は赤橙黄紫 = 230 KΩ
    func testInitialResistanceValue() throws {
        XCTAssertTrue(app.staticTexts["resistanceValueText"].waitForExistence(timeout: 10))
        XCTAssertEqual(resistanceValue, "230 KΩ")
    }

    // 1本目のバンドを赤から黒に変えると 230 KΩ -> 30 KΩ になる
    func testChangingFirstBandUpdatesResistanceValue() throws {
        XCTAssertTrue(app.staticTexts["resistanceValueText"].waitForExistence(timeout: 10))
        XCTAssertEqual(resistanceValue, "230 KΩ")

        let firstWheel = app.pickerWheels.element(boundBy: 0)
        XCTAssertTrue(firstWheel.waitForExistence(timeout: 10))
        firstWheel.adjust(toPickerWheelValue: "黒")

        XCTAssertEqual(resistanceValue, "30 KΩ", "Picker を操作しても抵抗値が更新されていない")
    }

    // 2本目のバンドを橙から白に変えると 230 KΩ -> 290 KΩ になる
    func testChangingSecondBandUpdatesResistanceValue() throws {
        XCTAssertTrue(app.staticTexts["resistanceValueText"].waitForExistence(timeout: 10))

        let secondWheel = app.pickerWheels.element(boundBy: 1)
        XCTAssertTrue(secondWheel.waitForExistence(timeout: 10))
        secondWheel.adjust(toPickerWheelValue: "白")

        XCTAssertEqual(resistanceValue, "290 KΩ", "Picker を操作しても抵抗値が更新されていない")
    }

    // 3本目のバンド（乗数）を黄から茶に変えると 230 KΩ -> 230 Ω になる
    func testChangingMultiplierBandUpdatesResistanceValue() throws {
        XCTAssertTrue(app.staticTexts["resistanceValueText"].waitForExistence(timeout: 10))

        let thirdWheel = app.pickerWheels.element(boundBy: 2)
        XCTAssertTrue(thirdWheel.waitForExistence(timeout: 10))
        thirdWheel.adjust(toPickerWheelValue: "茶")

        XCTAssertEqual(resistanceValue, "230 Ω", "Picker を操作しても抵抗値が更新されていない")
    }

    // 1本目のバンドを変えると抵抗画像のカラーバンドも追従する
    func testChangingFirstBandUpdatesResistanceImage() throws {
        XCTAssertTrue(app.otherElements["resistanceImageBand1"].waitForExistence(timeout: 10))
        XCTAssertEqual(app.otherElements["resistanceImageBand1"].label, "赤")

        app.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: "黒")

        XCTAssertEqual(app.otherElements["resistanceImageBand1"].label, "黒",
                       "Picker を操作しても抵抗画像の色が更新されていない")
    }

    // 5本帯モードに切り替えても Picker の操作が抵抗値に反映される
    func testFiveBandModeUpdatesResistanceValue() throws {
        XCTAssertTrue(app.staticTexts["resistanceValueText"].waitForExistence(timeout: 10))

        app.buttons["toggleBandCountButton"].tap()

        // 5本帯の初期値は赤橙黄紫青 = 234 * 10^5
        XCTAssertEqual(resistanceValue, "23.4 MΩ")

        app.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: "黒")

        XCTAssertEqual(resistanceValue, "3.4 MΩ", "5本帯モードで抵抗値が更新されていない")
    }

    // 4本目のバンド（誤差）を紫から金に変えると誤差表示が 0.1 % -> 5 % になる
    func testChangingToleranceBandUpdatesErrorValue() throws {
        XCTAssertTrue(app.staticTexts["resistanceErrorText"].waitForExistence(timeout: 10))
        XCTAssertEqual(app.staticTexts["resistanceErrorText"].label, "± 0.1 %")

        let fourthWheel = app.pickerWheels.element(boundBy: 3)
        XCTAssertTrue(fourthWheel.waitForExistence(timeout: 10))
        fourthWheel.adjust(toPickerWheelValue: "金")

        XCTAssertEqual(app.staticTexts["resistanceErrorText"].label, "± 5 %",
                       "Picker を操作しても誤差が更新されていない")
    }
}
