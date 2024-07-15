# Dependency Injection
## Demo App

This is a Demo app for the [Dependency Injection](https://github.com/alejandroivan/DependencyInjection) library.

The `DependencyInjectionDemoApp.swift` file will register Protocols to be resolver to Classes using the `Resolver` shared object provided by the library.

Then the `ContentView` SwiftUI `View` will resolve them to actual objects, using `@Inject` (for `DemoProtocol`) and manual resolution (for `DemoManualResolveProtocol`).