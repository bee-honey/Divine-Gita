//
//  BGLogger.swift
//  Divine Gita
//
//  Created by Naveen Keerthy on 6/17/24.
//

import Foundation
import SwiftyBeaver

protocol BGLoggerType {
    func verbose(_ message: String, _ file: String, _ function: String, line: Int)
    func debug(_ message: String, _ file: String, _ function: String, line: Int)
    func info(_ message: String, _ file: String, _ function: String, line: Int)
    func warning(_ message: String, _ file: String, _ function: String, line: Int)
    func error(_ message: String, _ file: String, _ function: String, line: Int)
}

extension BGLoggerType {
    func verbose(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        verbose(message, file, function, line: line)
    }
    
    func debug(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        debug(message, file, function, line: line)
    }
    
    func info(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        info(message, file, function, line: line)
    }
    
    func warning(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        warning(message, file, function, line: line)
    }
    
    func error(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        error(message, file, function, line: line)
    }
}

class BGLogger : BGLoggerType{
    
//    static let shared = BGLogger()
//    
//    private init() {
//        
//    }
    
    private let log: SwiftyBeaver.Type = {
        let log = SwiftyBeaver.self
        let console = ConsoleDestination()
        log.addDestination(console)
        
        return log
    }()
    
    
    func verbose(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.verbose(message, file: file, function: function, line: line)
    }
    
    func debug(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.debug(message, file: file, function: function, line: line)
    }
    
    func info(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.info(message, file: file, function: function, line: line)
    }
    
    func warning(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.warning(message, file: file, function: function, line: line)
    }
    
    func error(_ message: String, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        log.error(message, file: file, function: function, line: line)
    }
    
}
