import XCTest
import Combine
import SwiftUI
@testable import Local

// Picker の選択変更が View の再描画につながることを検証する。
// Picker は $viewModel.fourBandResistance.firstBandIndex という Binding 経由で
// 書き込むため、テストでも同じ経路を再現している。
class ResistanceCalculatorViewModelTests: XCTestCase {

    private var cancellables: Set<AnyCancellable> = []

    override func tearDownWithError() throws {
        cancellables.removeAll()
    }

    // Picker と同じ Binding 経路で 4本帯のインデックスを変更すると
    // objectWillChange が流れる
    func testFourBandIndexChangeThroughBindingNotifiesObservers() throws {
        let viewModel = ResistanceCalculatorViewModel()
        let observed = ObservedObject(wrappedValue: viewModel)

        var notificationCount = 0
        viewModel.objectWillChange
            .sink { _ in notificationCount += 1 }
            .store(in: &cancellables)

        let binding: Binding<Int> = observed.projectedValue.fourBandResistance.firstBandIndex
        XCTAssertEqual(binding.wrappedValue, 2)

        binding.wrappedValue = 0

        XCTAssertEqual(viewModel.fourBandResistance.firstBandIndex, 0)
        XCTAssertEqual(notificationCount, 1, "Picker の選択変更が objectWillChange に伝播していない")
    }

    // Picker と同じ Binding 経路で 5本帯のインデックスを変更すると
    // objectWillChange が流れる
    func testFiveBandIndexChangeThroughBindingNotifiesObservers() throws {
        let viewModel = ResistanceCalculatorViewModel()
        let observed = ObservedObject(wrappedValue: viewModel)

        var notificationCount = 0
        viewModel.objectWillChange
            .sink { _ in notificationCount += 1 }
            .store(in: &cancellables)

        let binding: Binding<Int> = observed.projectedValue.fiveBandResistance.firstBandIndex
        XCTAssertEqual(binding.wrappedValue, 2)

        binding.wrappedValue = 0

        XCTAssertEqual(viewModel.fiveBandResistance.firstBandIndex, 0)
        XCTAssertEqual(notificationCount, 1, "Picker の選択変更が objectWillChange に伝播していない")
    }

    // インデックスの変更が計算結果に反映される
    func testFourBandIndexChangeUpdatesResistance() throws {
        let viewModel = ResistanceCalculatorViewModel()
        XCTAssertEqual(viewModel.fourBandResistance.resistance?.resistanceString, "230 KΩ")

        let observed = ObservedObject(wrappedValue: viewModel)
        observed.projectedValue.fourBandResistance.firstBandIndex.wrappedValue = 1

        XCTAssertEqual(viewModel.fourBandResistance.resistance?.resistanceString, "130 KΩ")
    }
}
