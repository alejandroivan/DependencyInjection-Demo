//
//  DemoClass.swift
//  DependencyInjectionDemo
//
//  Created by Alejandro Melo Domínguez on 14-07-24.
//

import Foundation

protocol DemoProtocol {
    var title: String { get }
}

class DemoClass: DemoProtocol {
    let title = "Hello, World! From injected class."
}
