import SwiftUI

struct ResistanceHelpView: View {
    @Binding var showingResistanceHelpView: Bool
    var body: some View {
        VStack {
            Button {
                showingResistanceHelpView = false
            } label: {
                Image(R.image.colorCodeGraph.name)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
            }
            .background(Color.white.opacity(0.5))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
        }
    }
}

//struct ResistanceHelpView_Previews: PreviewProvider {
//
//
//    static var previews: some View {
//        ResistanceHelpView(showingResistanceHelpView: <#Binding<Bool>#>)
//    }
//}
