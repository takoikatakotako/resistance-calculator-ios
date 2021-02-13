import SwiftUI

struct ResistanceCalculatorView: View {
    @StateObject var viewModel = ResistanceCalculatorViewModel()
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topTrailing) {
                Button {
                    viewModel.showingHelpView = true
                } label: {
                    Image(R.image.resistanceHelp.name)
                        .resizable()
                        .frame(width: 28, height: 28)
                        .background(Color.white)
                        .padding()
                }

                VStack {
                    Spacer()
                    ResistanceText(
                        isFourbandResistance: viewModel.showing4BandResistance,
                        isPercentError: viewModel.showingPercentError,
                        fourBandResistance: $viewModel.fourBandResistance,
                        fiveBandResistance: $viewModel.fiveBandResistance)
                        .padding(.top, 16)
                    
                    RegistanceImage(
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
                    ResistanceHelpView(showingResistanceHelpView: $viewModel.showingHelpView)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.white)
            .navigationBarItems(
                leading:
                    Button(action: {
                        viewModel.showingPercentError.toggle()
                    }, label: {
                        Image(viewModel.showingPercentError ?
                                R.image.navigationPercent.name : R.image.navigationOhm.name)
                            .renderingMode(.template)
                            .foregroundColor(Color.black)
                    }),
                trailing:
                    Button(action: {
                        viewModel.showing4BandResistance.toggle()
                    }, label: {
                        Image(viewModel.showing4BandResistance ?
                                R.image.navigationResistance4Color.name : R.image.navigationResistance5Color.name)
                            .renderingMode(.template)
                            .foregroundColor(Color.black)
                    })
            )
            .background(Color.white)
            .navigationBarTitle("抵抗計算機", displayMode: .inline)
        }
    }
}

struct ResistanceCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        ResistanceCalculatorView()
    }
}
