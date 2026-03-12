import SwiftUI
import Combine

struct DecodeView: View {
    @ObservedObject var viewModel: DecodeViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("Text to decode: \(viewModel.encodedString)")
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                // View model should handle transitioning to the next view
                viewModel.decode(string: viewModel.encodedString)
            }) {
                Text("Decode")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    DecodeView(viewModel: DecodeViewModel(router: Router(), encodedString: "My String"))
}
