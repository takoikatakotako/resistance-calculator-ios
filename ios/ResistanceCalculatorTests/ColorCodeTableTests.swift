import XCTest
@testable import Local

// カラーコード表の表示整形。表は ResistanceColor.all から組み立てるため、
// 値の対応がずれていないかもここで担保する。
class ColorCodeTableTests: XCTestCase {

    func testNumberText() throws {
        XCTAssertEqual(ColorCodeTable.numberText(0), "0")
        XCTAssertEqual(ColorCodeTable.numberText(9), "9")
        XCTAssertEqual(ColorCodeTable.numberText(nil), "—")
    }

    func testMultiplierTextUsesSuperscript() throws {
        XCTAssertEqual(ColorCodeTable.multiplierText(1), "×10⁰")
        XCTAssertEqual(ColorCodeTable.multiplierText(10), "×10¹")
        XCTAssertEqual(ColorCodeTable.multiplierText(1e9), "×10⁹")
        XCTAssertEqual(ColorCodeTable.multiplierText(0.1), "×10⁻¹")
        XCTAssertEqual(ColorCodeTable.multiplierText(0.01), "×10⁻²")
        XCTAssertEqual(ColorCodeTable.multiplierText(nil), "—")
    }

    func testErrorText() throws {
        XCTAssertEqual(ColorCodeTable.errorText(1), "±1%")
        XCTAssertEqual(ColorCodeTable.errorText(0.05), "±0.05%")
        XCTAssertEqual(ColorCodeTable.errorText(10), "±10%")
        XCTAssertEqual(ColorCodeTable.errorText(nil), "—")
    }

    // 表に載せる色の並びと件数
    func testAllColorsAreListedInOrder() throws {
        XCTAssertEqual(ResistanceColor.all.count, 12)
        XCTAssertEqual(
            ResistanceColor.all.map(\.text),
            ["黒", "茶", "赤", "橙", "黄", "緑", "青", "紫", "灰", "白", "金", "銀"]
        )
    }

    private struct ExpectedRow {
        let color: ResistanceColor
        let number: String
        let multiplier: String
        let error: String
    }

    // 差し替え前の画像に載っていた値と一致していること
    func testTableMatchesLegacyChart() throws {
        let expected = [
            ExpectedRow(color: .black, number: "0", multiplier: "×10⁰", error: "—"),
            ExpectedRow(color: .brown, number: "1", multiplier: "×10¹", error: "±1%"),
            ExpectedRow(color: .red, number: "2", multiplier: "×10²", error: "±2%"),
            ExpectedRow(color: .orange, number: "3", multiplier: "×10³", error: "±0.05%"),
            ExpectedRow(color: .yellow, number: "4", multiplier: "×10⁴", error: "—"),
            ExpectedRow(color: .green, number: "5", multiplier: "×10⁵", error: "±0.5%"),
            ExpectedRow(color: .blue, number: "6", multiplier: "×10⁶", error: "±0.25%"),
            ExpectedRow(color: .purple, number: "7", multiplier: "×10⁷", error: "±0.1%"),
            ExpectedRow(color: .gray, number: "8", multiplier: "×10⁸", error: "—"),
            ExpectedRow(color: .white, number: "9", multiplier: "×10⁹", error: "—"),
            ExpectedRow(color: .gold, number: "—", multiplier: "×10⁻¹", error: "±5%"),
            ExpectedRow(color: .silver, number: "—", multiplier: "×10⁻²", error: "±10%")
        ]

        for row in expected {
            XCTAssertEqual(ColorCodeTable.numberText(row.color.number), row.number, "\(row.color.text) の数値")
            XCTAssertEqual(ColorCodeTable.multiplierText(row.color.multiplier), row.multiplier, "\(row.color.text) の乗数")
            XCTAssertEqual(ColorCodeTable.errorText(row.color.error), row.error, "\(row.color.text) の許容差")
        }
    }
}
