//
//  File.swift
//  
//
//  Created by Nickolans Griffith on 12/21/23.
//

import Foundation
import ArgumentParser

struct Clean: ParsableCommand {
    static var configuration = CommandConfiguration(commandName: "clean")
    
    public func run() throws {
        print("CLEANING...")
    }
}
