//
//  Injection.swift
//  Divine Gita
//
//  Created by Naveen Keerthy on 6/17/24.
//

import Foundation
import Swinject

final class Injection {
    static let shared = Injection()
    private var _container: Container?
    var container: Container {
        get {
            if _container == nil {
                _container = buildContainer()
            }
            return _container!
        }
        set {
            _container = newValue
        }
    }
    private func buildContainer() -> Container {
        let container = Container()

        // Register all the classes for DI
        container.register(BGLoggerType.self) { _ in
            return BGLogger()
        }
        return container
    }
}

@propertyWrapper struct Injected<Dependency> {
    let wrappedValue: Dependency
    init() {
        self.wrappedValue = Injection.shared.container.resolve(Dependency.self)!
    }
}
