import SwiftUI

struct ResistanceHelpScreen: View {
    @Binding var showingResistanceHelpScreen: Bool
    var body: some View {
        VStack {
            Button {
                showingResistanceHelpScreen = false
            } label: {
                Image(.colorCodeGraph)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            }
            .background(Color.white.opacity(0.5))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
    }
}

#Preview {
    @Previewable @State var showingResistanceHelpScreen = true
    ResistanceHelpScreen(showingResistanceHelpScreen: $showingResistanceHelpScreen)
}
