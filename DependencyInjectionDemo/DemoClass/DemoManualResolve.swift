//
//  DemoManualResolve.swift
//  DependencyInjectionDemo
//
//  Created by Alejandro Melo Domínguez on 14-07-24.
//

import Foundation

protocol DemoManualResolveProtocol {
    var paragraph: String { get }
}

class DemoManualResolve: DemoManualResolveProtocol {
    let paragraph = "This text is from DemoManualResolve."
}
