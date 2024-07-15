//
//  DependencyInjectionDemoApp.swift
//  DependencyInjectionDemo
//
//  Created by Alejandro Melo Domínguez on 14-07-24.
//

import DependencyInjection
import SwiftUI

@main
struct DependencyInjectionDemoApp: App {

    private let dependencyInjection: ResolverProtocol = Resolver.shared

    init() {
        do {
            try dependencyInjection.register(DemoProtocol.self) {
                DemoClass()
            }

            try dependencyInjection.register(DemoManualResolveProtocol.self) {
                DemoManualResolve()
            }
        } catch {
            fatalError("Cannot register dependency injection: \(error.localizedDescription)")
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
