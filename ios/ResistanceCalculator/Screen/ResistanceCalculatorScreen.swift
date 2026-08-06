import SwiftUI

struct ResistanceCalculatorScreen: View {
    @StateObject var viewModel = ResistanceCalculatorViewModel()

    var body: some View {
        NavigationStack {
            ZStack(alignment: .topTrailing) {
                Button {
                    viewModel.showingHelpView = true
                } label: {
                    Image(.resistanceHelp)
                        .resizable()
                        .frame(width: 28, height: 28)
                        .background(Color.white)
                        .padding()
                }
                .accessibilityIdentifier("openColorCodeButton")

                VStack {
                    Spacer()
                    ResistanceText(
                        isFourbandResistance: viewModel.showing4BandResistance,
                        isPercentError: viewModel.showingPercentError,
                        fourBandResistance: $viewModel.fourBandResistance,
                        fiveBandResistance: $viewModel.fiveBandResistance)
                        .padding(.top, 16)

                    ResistanceImage(
                        isFourbandResistance: viewModel.showing4BandResistance,
                        fourBandResistance: $viewModel.fourBandResistance,
                        fiveBandResistance: $viewModel.fiveBandResistance
                    )

                    ResistancePickerView(
                        isFourbandResistance: viewModel.showing4BandResistance,
                        fourBandResistance: $viewModel.fourBandResistance,
                        fiveBandResistance: $viewModel.fiveBandResistance
                    )
                    .frame(height: 160)

                    Spacer()
                }

                if viewModel.showingHelpView {
                    ResistanceHelpScreen(showingResistanceHelpScreen: $viewModel.showingHelpView)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.white)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        viewModel.showingPercentError.toggle()
                    } label: {
                        Image(viewModel.showingPercentError ?
                                .navigationPercent : .navigationOhm)
                            .renderingMode(.template)
                            .foregroundColor(Color.black)
                    }
                    .accessibilityIdentifier("togglePercentErrorButton")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        viewModel.showing4BandResistance.toggle()
                    } label: {
                        Image(viewModel.showing4BandResistance ?
                                .navigationResistance4 : .navigationResistance5)
                            .renderingMode(.template)
                            .foregroundColor(Color.black)
                    }
                    .accessibilityIdentifier("toggleBandCountButton")
                }
            }
            .navigationTitle("抵抗計算機")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ResistanceCalculatorScreen()
}
