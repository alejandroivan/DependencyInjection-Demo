//
//  ContentView.swift
//  DependencyInjectionDemo
//
//  Created by Alejandro Melo Domínguez on 14-07-24.
//

import DependencyInjection
import SwiftUI

struct ContentView: View {

    @Inject private var demo: DemoProtocol?
    @State private var manualResolve: DemoManualResolveProtocol?

    var body: some View {
        VStack {
            if let demo {
                Text(demo.title)
            } else {
                Text("Cannot load injection DemoProtocol.")
            }

            if let manualResolve {
                Text(manualResolve.paragraph)
            } else {
                Text("Cannot resolve DemoManualResolveProtocol.")
            }
        }
        .padding()
        .onAppear {
            manualResolve = try? Resolver.shared.resolve(DemoManualResolveProtocol.self)
        }
    }
}
