import SwiftUI
import Combine

class Router: ObservableObject, RouteModifiable {
    // This is the piece of state that defines what screen we are currently looking at
    @Published var currentView: Screen = .encode(EmptyView())

    func showEncode(view: any View) {
        currentView = .encode(view)
    }

    func showDecode(encodedString: String) {
        currentView = .decode(encodedString)
    }

    func showSuccess() {
        currentView = .success
    }
}

protocol RouteModifiable {
    func showEncode(view: any View)
    func showDecode(encodedString: String)
    func showSuccess()
}

enum Screen {
    case encode(any View)
    case decode(String)
    case success
}
