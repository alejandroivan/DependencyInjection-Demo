//
//  ContentView.swift
//  DependencyInjectionDemo
//
//  Created by Alejandro Melo Domínguez on 14-07-24.
//

import DependencyInjection
import SwiftUI

struct ContentView: View {

    @Inject private var demo: DemoProtocol
    @SafeInject private var safeDemo: DemoProtocol?

    @State private var manualResolve: DemoManualResolveProtocol?

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Normal injection: " + demo.title)
            Text("Safe injection: " + String(describing: safeDemo?.title))

            if let manualResolve {
                Text(manualResolve.paragraph)
            } else {
                Text("Cannot resolve DemoManualResolveProtocol.")
            }
        }
        .padding(10)
        .onAppear {
            manualResolve = try? Resolver.shared.resolve(DemoManualResolveProtocol.self)
        }
    }
}
