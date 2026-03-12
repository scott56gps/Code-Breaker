//
//  ContentView.swift
//  Code Breaker
//
//  Created by Scott Nicholes on 3/9/26.
//

import SwiftUI
import Combine

struct EncodeView: View {
    @ObservedObject var viewModel: EncodeViewModel
    var body: some View {
        VStack {
            Spacer()
            Text("Code Breaker")
                .font(.title)
            Spacer()
            Text("Enter a secret message to encode:")
            TextField("Message", text: $viewModel.text)
            if !viewModel.text.isEmpty {
                Text("The text is: \(viewModel.text)")
                Button(action: {
                    viewModel.encode(string: viewModel.text)
                }) {
                    Text("Encode")
                        .padding()
                        .background(viewModel.text.isEmpty ? Color.gray : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    EncodeView(viewModel: EncodeViewModel(router: Router()))
}
