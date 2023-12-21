//
//  File.swift
//  
//
//  Created by Nickolans Griffith on 12/21/23.
//

import Foundation
import ArgumentParser

struct Build: ParsableCommand {
    static var configuration = CommandConfiguration(commandName: "build")
    
    public func run() throws {
        print("BUILDING...")
    }
}
