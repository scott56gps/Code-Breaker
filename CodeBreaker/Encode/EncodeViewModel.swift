//
//  EncodeViewModel.swift
//  Code Breaker
//
//  Created by Scott Nicholes on 3/9/26.
//
import Foundation
import Combine

class EncodeViewModel: ObservableObject {
    @Published var text: String = ""
    private let router: RouteModifiable

    init(router: RouteModifiable) {
        self.router = router
    }

    func encode(string: String) {
        router.showDecode(encodedString: string)
    }
}
