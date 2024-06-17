//
//  ContentViewModel.swift
//  Divine Gita
//
//  Created by Naveen Keerthy on 6/14/24.
//

import Foundation

class ContentViewModel: ObservableObject {
    
//    private var logger: BGLoggerType
    
//    init(logger: BGLoggerType = BGLogger()) {
//        self.logger = logger
//    }
    
//    private var logger: BGLoggerType = Injection.shared.container.resolve(BGLoggerType.self)!
    
    //We have created custom property wrappers so, now we dont need the long BGLoggerType
    
    @Injected private var logger: BGLoggerType
    
    
    func onAppear() {
        logger.error("View loaded")
    }
    
}
