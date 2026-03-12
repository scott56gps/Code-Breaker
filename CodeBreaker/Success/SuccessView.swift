import SwiftUI

struct SuccessView: View {
    let viewModel: SuccessViewModel

    var body: some View {
        VStack {
            Spacer()
            Text("Congratulations!")
                .font(.title)
            Text("You have successfully decoded the message.")
                .padding()
            Spacer()
            Button(action: {
                viewModel.returnToEncodeView()
            }) {
                Text("Return to Encode View")
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
    SuccessView(viewModel: SuccessViewModel(router: Router()))
}
