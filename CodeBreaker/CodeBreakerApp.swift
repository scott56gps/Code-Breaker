//
//  CodeBreakerApp.swift
//  CodeBreaker
//
//  Created by Scott Nicholes on 3/10/26.
//

import SwiftUI

@main
struct CodeBreakerApp: App {
    @StateObject private var viewState = Router()
    private let configBuilder = CodeBreakerConfigBuilder()

    var body: some Scene {
        WindowGroup {
            RoutingView(configBuilder: configBuilder)
                .environmentObject(viewState)
        }
    }
}
