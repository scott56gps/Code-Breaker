import SwiftUI

struct RoutingView: View {
    @EnvironmentObject var router: Router
    let configBuilder: CodeBreakerConfigBuilder

    var body: some View {
        switch router.currentView {
        case .encode: configBuilder.makeEncodeView(router: router)
        case .decode(let encodedString): configBuilder.makeDecodeView(router: router, encodedString: encodedString)
        case .success: configBuilder.makeSuccessView(router: router)
        }
    }
}
