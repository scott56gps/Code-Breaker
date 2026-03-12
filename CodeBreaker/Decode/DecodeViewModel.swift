import Foundation
import Combine

class DecodeViewModel: ObservableObject {
    @Published var encodedString: String
    private let router: RouteModifiable

    init(router: RouteModifiable, encodedString: String) {
        self.router = router
        self.encodedString = encodedString
    }

    func decode(string: String) {
        router.showSuccess()
    }
}
