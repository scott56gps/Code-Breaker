import SwiftUI

final class CodeBreakerConfigBuilder {
    func makeEncodeView(router: RouteModifiable) -> some View {
        let viewModel = EncodeViewModel(router: router)
        return EncodeView(viewModel: viewModel)
    }

    func makeDecodeView(router: RouteModifiable, encodedString: String) -> some View {
        let viewModel = DecodeViewModel(router: router, encodedString: encodedString)
        return DecodeView(viewModel: viewModel)
    }

    func makeSuccessView(router: RouteModifiable) -> some View {
        let viewModel = SuccessViewModel(router: router)
        return SuccessView(viewModel: viewModel)
    }
}
