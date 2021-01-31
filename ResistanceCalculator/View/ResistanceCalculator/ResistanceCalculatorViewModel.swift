import SwiftUI


class ResistanceCalculatorViewModel: ObservableObject {
    @Published var showing4BandResistance: Bool = true
    @Published var showingPercentError: Bool = true
    
    @Published var fourBandResistance = FourBandResistance()
    @Published var fiveBandResistance = FiveBandResistance()

}
